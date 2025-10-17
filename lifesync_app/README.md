# 🌟 LifeSync App

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-3.24.5-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-3.5.4-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Go](https://img.shields.io/badge/Go-1.21+-00ADD8?style=for-the-badge&logo=go&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-16-336791?style=for-the-badge&logo=postgresql&logoColor=white)

**A comprehensive life management application to track your habits, finances, and job applications**

[Features](#-features) • [Screenshots](#-screenshots) • [Tech Stack](#-tech-stack) • [Installation](#-installation) • [Usage](#-usage) • [API Documentation](#-api-documentation)

</div>

---

## 📖 Overview

LifeSync is a modern, cross-platform application built with Flutter that helps you organize and track multiple aspects of your life in one place. With an intuitive interface and powerful backend, LifeSync enables you to:

- 🎯 Build and maintain positive habits
- 💰 Manage your personal finances
- 💼 Track job applications and projects
- 📊 Visualize your progress with interactive charts

## ✨ Features

### 🏠 Dashboard
- **Overview Statistics**: Get a quick glance at your habits, finances, and job applications
- **Interactive Pie Charts**: Visualize data with beautiful FL Chart graphics
- **Real-time Updates**: Pull-to-refresh functionality for latest data
- **Quick Navigation**: Easy access to all main features

### 🎯 Habits Tracker
- ✅ Create and manage daily/weekly habits
- 🔥 Track current and best streaks
- 📈 View completion statistics
- 🎨 Customizable icons and colors for each habit
- 📝 Add descriptions and reminders
- 🗂️ Organize by categories (Health, Learning, Productivity, etc.)
- ⏰ Set target days and reminder times

### 💰 Finance Manager
- 📊 Track income and expenses with pie chart visualization
- 💳 Create and categorize transactions
- 🏷️ Manage custom categories with color coding
- 📅 Filter by date range
- 💵 Support for multiple currencies (IDR, USD, EUR, JPY, etc.)
- 📈 View financial statistics and summaries

### 💼 Job Applications Tracker
- 📝 Track job applications with detailed information
- 🏢 Manage projects and milestones
- 📊 Monitor application status (Applied, Interview, Offered, Rejected)
- 💰 Track salary ranges and compensation
- 📅 Record application and interview dates
- 🔗 Save job links and company information
- 📈 View job search statistics

## 🎨 Screenshots

<div align="center">

| Dashboard | Habits | Finance |
|:---------:|:------:|:-------:|
| ![Dashboard](docs/screenshots/dashboard.png) | ![Habits](docs/screenshots/habits.png) | ![Finance](docs/screenshots/finance.png) |

| Jobs | Habit Details | Transaction Form |
|:----:|:-------------:|:----------------:|
| ![Jobs](docs/screenshots/jobs.png) | ![Details](docs/screenshots/habit-details.png) | ![Form](docs/screenshots/transaction-form.png) |

</div>

> 📷 *Screenshots will be added in future updates*

## 🛠️ Tech Stack

### Frontend (Flutter)
- **Flutter SDK**: 3.24.5
- **Dart**: 3.5.4
- **State Management**: Riverpod 2.6.1
- **Code Generation**: Freezed 2.5.2 + json_serializable 6.8.0
- **Routing**: GoRouter 14.6.2
- **HTTP Client**: Dio 5.9.0
- **Charts**: FL Chart 0.68.0
- **Fonts**: Google Fonts 6.3.0
- **Internationalization**: intl 0.19.0

### Backend (Go)
- **Framework**: Gin Web Framework
- **Database**: PostgreSQL 16
- **API**: RESTful API with 35 endpoints
- **Port**: 8080 (default)

### Architecture
- **Clean Architecture** with feature-first organization
- **Repository Pattern** for data layer
- **Provider Pattern** for state management
- **AsyncValue** for loading/error states
- **Freezed** for immutable models

## 📦 Installation

### Prerequisites

Before you begin, ensure you have the following installed:
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (3.24.5 or higher)
- [Dart SDK](https://dart.dev/get-dart) (3.5.4 or higher)
- [Go](https://golang.org/dl/) (1.21 or higher)
- [PostgreSQL](https://www.postgresql.org/download/) (16 or higher)
- [Git](https://git-scm.com/downloads)

### 🗄️ Database Setup

1. **Install PostgreSQL** and create a database:
   ```sql
   CREATE DATABASE lifesync_db;
   ```

2. **Set up database credentials**:
   - Username: `user`
   - Password: `strongpassword`
   - Database: `lifesync_db`
   - Port: `5432`

3. **Run migrations** (automatically handled by the backend on first run)

### 🚀 Backend Setup

1. **Navigate to backend directory**:
   ```bash
   cd lifesync-backend
   ```

2. **Install Go dependencies**:
   ```bash
   go mod download
   ```

3. **Configure database connection** in `config/config.go`:
   ```go
   DSN: "host=localhost user=postgres password=1234 dbname=lifesync_db port=5432 sslmode=disable"
   ```

4. **Run the backend server**:
   ```bash
   # Windows
   run.bat

   # Linux/Mac
   ./run.sh
   ```

   The API will be available at `http://localhost:8080`

### 📱 Flutter App Setup

1. **Navigate to app directory**:
   ```bash
   cd lifesync_app
   ```

2. **Install Flutter dependencies**:
   ```bash
   flutter pub get
   ```

3. **Generate code** (Freezed models):
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

4. **Configure API endpoint** in `lib/data/services/api_service.dart`:
   ```dart
   final dio = Dio(BaseOptions(
     baseUrl: 'http://localhost:8080/api',
   ));
   ```

5. **Run the app**:
   ```bash
   # For Windows
   flutter run -d windows

   # For Android
   flutter run -d android

   # For iOS
   flutter run -d ios

   # For Web
   flutter run -d chrome

   # For Linux
   flutter run -d linux

   # For macOS
   flutter run -d macos
   ```

## 🎮 Usage

### First Time Setup

1. **Start the backend server** first:
   ```bash
   cd lifesync-backend
   run.bat  # or ./run.sh on Linux/Mac
   ```

2. **Run the Flutter app**:
   ```bash
   cd lifesync_app
   flutter run -d windows  # or your preferred platform
   ```

3. **Explore the app**:
   - Navigate through the bottom navigation bar
   - Create your first habit, transaction, or job application
   - Pull down to refresh data
   - Tap on items to view details

### Development Workflow

#### Making Model Changes

When you modify data models:

```bash
# Clean and regenerate
flutter clean
flutter pub get
dart run build_runner build --delete-conflicting-outputs
```

#### Running Tests

```bash
# Run all tests
flutter test

# Run with coverage
flutter test --coverage
```

#### Code Analysis

```bash
# Analyze code
flutter analyze

# Format code
dart format lib/ -l 120
```

## 📚 API Documentation

The backend provides 35 RESTful API endpoints across 4 main modules:

### 📊 Dashboard API (1 endpoint)
- `GET /api/dashboard/stats` - Get overview statistics

### 🎯 Habits API (8 endpoints)
- `GET /api/habits` - List all habits
- `POST /api/habits` - Create new habit
- `GET /api/habits/:id` - Get habit details
- `PUT /api/habits/:id` - Update habit
- `DELETE /api/habits/:id` - Delete habit
- `POST /api/habits/:id/check` - Mark habit as done
- `DELETE /api/habits/:id/check` - Unmark habit
- `GET /api/habits/stats` - Get habit statistics

### 💰 Finance API (12 endpoints)
- `GET /api/finance/transactions` - List transactions
- `POST /api/finance/transactions` - Create transaction
- `GET /api/finance/transactions/:id` - Get transaction details
- `PUT /api/finance/transactions/:id` - Update transaction
- `DELETE /api/finance/transactions/:id` - Delete transaction
- `GET /api/finance/categories` - List categories
- `POST /api/finance/categories` - Create category
- `GET /api/finance/categories/:id` - Get category details
- `PUT /api/finance/categories/:id` - Update category
- `DELETE /api/finance/categories/:id` - Delete category
- `GET /api/finance/stats` - Get finance statistics
- `GET /api/finance/summary` - Get finance summary

### 💼 Jobs API (14 endpoints)
- `GET /api/jobs/applications` - List job applications
- `POST /api/jobs/applications` - Create application
- `GET /api/jobs/applications/:id` - Get application details
- `PUT /api/jobs/applications/:id` - Update application
- `DELETE /api/jobs/applications/:id` - Delete application
- `GET /api/jobs/projects` - List projects
- `POST /api/jobs/projects` - Create project
- `GET /api/jobs/projects/:id` - Get project details
- `PUT /api/jobs/projects/:id` - Update project
- `DELETE /api/jobs/projects/:id` - Delete project
- `GET /api/jobs/stats` - Get job statistics
- `GET /api/jobs/summary` - Get job summary

For detailed API documentation, see [BACKEND_API_DOCS.md](../lifesync-backend/BACKEND_API_DOCS.md)

## 📁 Project Structure

```
lifesync_app/
├── lib/
│   ├── main.dart                 # App entry point
│   ├── core/                     # Core functionality
│   │   ├── constants/           # App constants
│   │   ├── router/              # GoRouter configuration
│   │   ├── theme/               # App theme & colors
│   │   ├── utils/               # Utility functions
│   │   └── widgets/             # Reusable widgets
│   ├── data/                    # Data layer
│   │   ├── models/              # Data models (Freezed)
│   │   │   ├── habit_model.dart
│   │   │   ├── finance_model.dart
│   │   │   ├── job_model.dart
│   │   │   └── dashboard_model.dart
│   │   ├── providers/           # Riverpod providers
│   │   │   ├── habit_provider.dart
│   │   │   ├── finance_provider.dart
│   │   │   ├── job_provider.dart
│   │   │   └── dashboard_provider.dart
│   │   ├── repositories/        # Repository pattern
│   │   │   ├── habit_repository.dart
│   │   │   ├── finance_repository.dart
│   │   │   └── job_repository.dart
│   │   └── services/            # API services
│   │       └── api_service.dart
│   └── features/                # Feature modules
│       ├── dashboard/           # Dashboard feature
│       │   └── presentation/
│       │       └── pages/
│       │           └── dashboard_page.dart
│       ├── habits/              # Habits feature
│       │   └── presentation/
│       │       └── pages/
│       │           └── habits_page.dart
│       ├── finance/             # Finance feature
│       │   └── presentation/
│       │       └── pages/
│       │           └── finance_page.dart
│       └── jobs/                # Jobs feature
│           └── presentation/
│               └── pages/
│                   └── jobs_page.dart
├── test/                        # Unit & widget tests
├── pubspec.yaml                 # Dependencies
├── analysis_options.yaml        # Linter rules
└── README.md                    # This file
```

## 🔧 Configuration

### API Endpoint

Edit `lib/data/services/api_service.dart`:

```dart
final dio = Dio(BaseOptions(
  baseUrl: 'http://your-api-url:8080/api',
  connectTimeout: const Duration(seconds: 30),
  receiveTimeout: const Duration(seconds: 30),
));
```

### App Theme

Customize colors in `lib/core/theme/app_colors.dart`:

```dart
class AppColors {
  static const Color primary = Color(0xFF6366F1);
  static const Color secondary = Color(0xFF8B5CF6);
  // ... more colors
}
```

### Analysis Options

Suppress false positive warnings in `analysis_options.yaml`:

```yaml
analyzer:
  errors:
    invalid_annotation_target: ignore  # Freezed @JsonKey warnings
```

## 🐛 Troubleshooting

### Red Marks in VS Code

If you see red marks on `.freezed.dart` or `.g.dart` files:

1. **Restart Dart Analysis Server**:
   - Press `Ctrl + Shift + P`
   - Type: `Dart: Restart Analysis Server`
   - Press Enter

2. **Or reload window**:
   - Press `Ctrl + Shift + P`
   - Type: `Developer: Reload Window`

### Build Runner Issues

If code generation fails:

```bash
flutter clean
flutter pub get
dart run build_runner clean
dart run build_runner build --delete-conflicting-outputs
```

### Backend Connection Issues

1. Check if backend is running on port 8080
2. Verify PostgreSQL is running
3. Check database credentials in `config/config.go`
4. Test API with: `curl http://localhost:8080/api/dashboard/stats`

### Flutter Issues

```bash
# Clear all caches
flutter clean
flutter pub cache repair
flutter pub get

# Verify installation
flutter doctor -v
```

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Coding Standards

- Follow [Effective Dart](https://dart.dev/guides/language/effective-dart) guidelines
- Use `dart format` with 120 line length
- Add comments for complex logic
- Write tests for new features
- Use Freezed for data models
- Follow Clean Architecture principles

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👥 Authors

- **Yuzzar** - *Initial work* - [GitHub](https://github.com/Yuzzar)

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Riverpod for excellent state management
- Freezed for code generation
- FL Chart for beautiful charts
- The Go and Gin communities
- PostgreSQL for robust database

## 📮 Contact & Support

- **GitHub Issues**: [Report a bug](https://github.com/Yuzzar/lifesync/issues)
- **Discussions**: [Ask a question](https://github.com/Yuzzar/lifesync/discussions)

---

<div align="center">

**⭐ Star this repository if you find it helpful!**

Made with ❤️ using Flutter & Go

</div>
