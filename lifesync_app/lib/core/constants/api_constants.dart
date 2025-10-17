class ApiConstants {
  // Base URL - Backend running on localhost:8080
  static const String baseUrl = 'http://localhost:8080';
  
  // Timeout
  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
  
  // Habits Endpoints
  static const String habits = '/habits';
  static String habitById(int id) => '/habits/$id';
  static const String habitLogs = '/habit-logs';
  static String habitLogById(int id) => '/habit-logs/$id';
  static String habitStats(int habitId) => '/habits/$habitId/stats';
  
  // Finance Endpoints
  static const String transactions = '/finance/transactions';
  static String transactionById(int id) => '/finance/transactions/$id';
  static const String categories = '/finance/categories';
  static String categoryById(int id) => '/finance/categories/$id';
  static const String financeStats = '/finance/stats';
  
  // Jobs Endpoints
  static const String jobApplications = '/jobs/applications';
  static String jobApplicationById(int id) => '/jobs/applications/$id';
  static const String projects = '/jobs/projects';
  static String projectById(int id) => '/jobs/projects/$id';
  static String projectTasks(int projectId) => '/jobs/projects/$projectId/tasks';
  static const String jobStats = '/jobs/stats';
  
  // Dashboard
  static const String dashboardStats = '/dashboard/stats';
}
