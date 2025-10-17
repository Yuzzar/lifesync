import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../../data/providers/dashboard_provider.dart';
import '../../../../core/theme/app_colors.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboardStatsAsync = ref.watch(dashboardStatsProvider);

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Dashboard', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            Text(
              DateFormat('EEEE, dd MMMM yyyy').format(DateTime.now()),
              style: TextStyle(fontSize: 14, color: Colors.grey[600], fontWeight: FontWeight.normal),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () => ref.refresh(dashboardStatsProvider),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(dashboardStatsProvider);
        },
        child: dashboardStatsAsync.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.error_outline_rounded, size: 64, color: Colors.red[300]),
                const SizedBox(height: 16),
                Text('Error loading data', style: TextStyle(fontSize: 18, color: Colors.grey[700])),
                const SizedBox(height: 8),
                Text('$error', style: TextStyle(fontSize: 14, color: Colors.grey[600])),
                const SizedBox(height: 24),
                ElevatedButton.icon(
                  onPressed: () => ref.refresh(dashboardStatsProvider),
                  icon: const Icon(Icons.refresh),
                  label: const Text('Retry'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  ),
                ),
              ],
            ),
          ),
          data: (stats) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Welcome Card
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [AppColors.primary, AppColors.primary.withOpacity(0.7)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.primary.withOpacity(0.3),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome Back! 👋',
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Here\'s your overview for today',
                          style: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Quick Stats Grid
                  Row(
                    children: [
                      Expanded(
                        child: _QuickStatCard(
                          icon: Icons.check_circle_rounded,
                          color: AppColors.success,
                          title: 'Habits',
                          value: stats.habitStats.completedLogs.toString(),
                          subtitle: 'completed',
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _QuickStatCard(
                          icon: Icons.account_balance_wallet_rounded,
                          color: AppColors.finance,
                          title: 'Balance',
                          value: NumberFormat.compact().format(stats.financeStats.balance),
                          subtitle: 'current',
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _QuickStatCard(
                          icon: Icons.work_rounded,
                          color: AppColors.jobs,
                          title: 'Applications',
                          value: stats.jobStats.totalApplications.toString(),
                          subtitle: 'total',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // Habits Section
                  _SectionHeader(
                    title: 'Habits Overview',
                    icon: Icons.check_circle_outline_rounded,
                    color: AppColors.habits,
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 160,
                            child: PieChart(
                              PieChartData(
                                sectionsSpace: 2,
                                centerSpaceRadius: 40,
                                sections: [
                                  PieChartSectionData(
                                    value: stats.habitStats.completedLogs.toDouble(),
                                    title: '${stats.habitStats.completedLogs}',
                                    color: AppColors.success,
                                    radius: 50,
                                    titleStyle: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  PieChartSectionData(
                                    value: (stats.habitStats.totalLogs - stats.habitStats.completedLogs).toDouble(),
                                    title: '${stats.habitStats.totalLogs - stats.habitStats.completedLogs}',
                                    color: Colors.grey[300],
                                    radius: 50,
                                    titleStyle: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _StatRow(
                                label: 'Total Logs',
                                value: stats.habitStats.totalLogs.toString(),
                                color: AppColors.habits,
                              ),
                              const SizedBox(height: 12),
                              _StatRow(
                                label: 'Completed',
                                value: stats.habitStats.completedLogs.toString(),
                                color: AppColors.success,
                              ),
                              const SizedBox(height: 12),
                              _StatRow(
                                label: 'Completion Rate',
                                value: '${stats.habitStats.completionRate.toStringAsFixed(1)}%',
                                color: AppColors.warning,
                              ),
                              const SizedBox(height: 12),
                              _StatRow(
                                label: 'Current Streak',
                                value: '${stats.habitStats.currentStreak} days',
                                color: AppColors.primary,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Finance Section
                  _SectionHeader(
                    title: 'Finance Overview',
                    icon: Icons.account_balance_wallet_rounded,
                    color: AppColors.finance,
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 160,
                            child: PieChart(
                              PieChartData(
                                sectionsSpace: 2,
                                centerSpaceRadius: 40,
                                sections: [
                                  PieChartSectionData(
                                    value: stats.financeStats.income,
                                    title: NumberFormat.compact().format(stats.financeStats.income),
                                    color: AppColors.success,
                                    radius: 50,
                                    titleStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  PieChartSectionData(
                                    value: stats.financeStats.expense,
                                    title: NumberFormat.compact().format(stats.financeStats.expense),
                                    color: AppColors.error,
                                    radius: 50,
                                    titleStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _StatRow(
                                label: 'Income',
                                value: 'Rp ${NumberFormat('#,###').format(stats.financeStats.income)}',
                                color: AppColors.success,
                              ),
                              const SizedBox(height: 12),
                              _StatRow(
                                label: 'Expense',
                                value: 'Rp ${NumberFormat('#,###').format(stats.financeStats.expense)}',
                                color: AppColors.error,
                              ),
                              const SizedBox(height: 12),
                              _StatRow(
                                label: 'Balance',
                                value: 'Rp ${NumberFormat('#,###').format(stats.financeStats.balance)}',
                                color: stats.financeStats.balance >= 0 ? AppColors.success : AppColors.error,
                              ),
                              const SizedBox(height: 12),
                              _StatRow(
                                label: 'Transactions',
                                value: stats.financeStats.transactionCount.toString(),
                                color: AppColors.finance,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Jobs Section
                  _SectionHeader(
                    title: 'Jobs Overview',
                    icon: Icons.work_outline_rounded,
                    color: AppColors.jobs,
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 160,
                            child: PieChart(
                              PieChartData(
                                sectionsSpace: 2,
                                centerSpaceRadius: 40,
                                sections: [
                                  PieChartSectionData(
                                    value: stats.jobStats.activeApplications.toDouble(),
                                    title: '${stats.jobStats.activeApplications}',
                                    color: AppColors.primary,
                                    radius: 50,
                                    titleStyle: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  PieChartSectionData(
                                    value: stats.jobStats.interviews.toDouble(),
                                    title: '${stats.jobStats.interviews}',
                                    color: AppColors.warning,
                                    radius: 50,
                                    titleStyle: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  PieChartSectionData(
                                    value: stats.jobStats.totalProjects.toDouble(),
                                    title: '${stats.jobStats.totalProjects}',
                                    color: AppColors.success,
                                    radius: 50,
                                    titleStyle: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _StatRow(
                                label: 'Total Applications',
                                value: stats.jobStats.totalApplications.toString(),
                                color: AppColors.jobs,
                              ),
                              const SizedBox(height: 12),
                              _StatRow(
                                label: 'Active',
                                value: stats.jobStats.activeApplications.toString(),
                                color: AppColors.primary,
                              ),
                              const SizedBox(height: 12),
                              _StatRow(
                                label: 'Interviews',
                                value: stats.jobStats.interviews.toString(),
                                color: AppColors.warning,
                              ),
                              const SizedBox(height: 12),
                              _StatRow(
                                label: 'Projects',
                                value: stats.jobStats.totalProjects.toString(),
                                color: AppColors.success,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _QuickStatCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  final String value;
  final String subtitle;

  const _QuickStatCard({
    required this.icon,
    required this.color,
    required this.title,
    required this.value,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 24),
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: TextStyle(fontSize: 12, color: Colors.grey[600]),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(fontSize: 10, color: Colors.grey[500]),
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const _SectionHeader({
    required this.title,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: color, size: 20),
        ),
        const SizedBox(width: 12),
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class _StatRow extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  const _StatRow({
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 13, color: Colors.grey[600]),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ],
    );
  }
}
