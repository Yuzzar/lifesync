import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/dashboard/presentation/pages/dashboard_page.dart';
import '../../features/habits/presentation/pages/habits_page.dart';
import '../../features/finance/presentation/pages/finance_page.dart';
import '../../features/jobs/presentation/pages/jobs_page.dart';

// Router configuration
final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    // Main shell with bottom navigation
    ShellRoute(
      builder: (context, state, child) {
        return MainNavigationPage(child: child);
      },
      routes: [
        GoRoute(
          path: '/',
          name: 'dashboard',
          pageBuilder: (context, state) => NoTransitionPage(
            child: DashboardPage(),
          ),
        ),
        GoRoute(
          path: '/habits',
          name: 'habits',
          pageBuilder: (context, state) => NoTransitionPage(
            child: HabitsPage(),
          ),
        ),
        GoRoute(
          path: '/finance',
          name: 'finance',
          pageBuilder: (context, state) => NoTransitionPage(
            child: FinancePage(),
          ),
        ),
        GoRoute(
          path: '/jobs',
          name: 'jobs',
          pageBuilder: (context, state) => NoTransitionPage(
            child: JobsPage(),
          ),
        ),
      ],
    ),
  ],
);

// Main navigation page with bottom navigation bar
class MainNavigationPage extends StatefulWidget {
  final Widget child;

  const MainNavigationPage({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<MainNavigationPage> createState() => _MainNavigationPageState();
}

class _MainNavigationPageState extends State<MainNavigationPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index, BuildContext context) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        context.go('/');
        break;
      case 1:
        context.go('/habits');
        break;
      case 2:
        context.go('/finance');
        break;
      case 3:
        context.go('/jobs');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // Update selected index based on current route
    final currentRoute = GoRouterState.of(context).uri.path;
    if (currentRoute == '/') {
      _selectedIndex = 0;
    } else if (currentRoute.startsWith('/habits')) {
      _selectedIndex = 1;
    } else if (currentRoute.startsWith('/finance')) {
      _selectedIndex = 2;
    } else if (currentRoute.startsWith('/jobs')) {
      _selectedIndex = 3;
    }

    return Scaffold(
      body: widget.child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) => _onItemTapped(index, context),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.dashboard_outlined),
            selectedIcon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          NavigationDestination(
            icon: Icon(Icons.check_circle_outline),
            selectedIcon: Icon(Icons.check_circle),
            label: 'Habits',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_balance_wallet_outlined),
            selectedIcon: Icon(Icons.account_balance_wallet),
            label: 'Finance',
          ),
          NavigationDestination(
            icon: Icon(Icons.work_outline),
            selectedIcon: Icon(Icons.work),
            label: 'Jobs',
          ),
        ],
      ),
    );
  }
}
