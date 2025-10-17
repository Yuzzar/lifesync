class AppConstants {
  // App Info
  static const String appName = 'LifeSync';
  static const String appVersion = '1.0.0';
  
  // Pagination
  static const int defaultPageSize = 20;
  static const int maxPageSize = 100;
  
  // Date Formats
  static const String dateFormat = 'yyyy-MM-dd';
  static const String dateTimeFormat = 'yyyy-MM-dd HH:mm:ss';
  static const String displayDateFormat = 'dd MMM yyyy';
  
  // Categories
  static const List<String> transactionTypes = ['income', 'expense'];
  static const List<String> frequencies = ['daily', 'weekly', 'monthly'];
  
  // Job Application Status
  static const List<String> jobStatuses = [
    'applied',
    'screening',
    'interview',
    'offer',
    'rejected',
    'accepted',
    'withdrawn'
  ];
  
  // Project Status
  static const List<String> projectStatuses = [
    'planning',
    'active',
    'on_hold',
    'completed',
    'cancelled'
  ];
  
  // Task Status
  static const List<String> taskStatuses = [
    'pending',
    'in_progress',
    'completed',
    'blocked'
  ];
  
  // Priority Levels
  static const List<String> priorities = ['low', 'medium', 'high'];
}
