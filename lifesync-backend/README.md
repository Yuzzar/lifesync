# LifeSync Backend API

Backend API untuk LifeSync - Aplikasi all-in-one untuk manajemen kehidupan personal (Habit Tracker, Finance Tracker, Job Tracker).

## 🚀 Tech Stack

- **Language**: Go 1.21+
- **Framework**: Gin
- **Database**: PostgreSQL
- **ORM**: GORM

## 📁 Project Structure

```
lifesync-backend/
├── cmd/
│   └── api/
│       └── main.go              # Entry point
├── internal/
│   ├── models/                  # Data models & DTOs
│   │   ├── habit.go
│   │   ├── finance.go
│   │   ├── job.go
│   │   └── common.go
│   ├── handlers/                # HTTP handlers
│   │   ├── habit_handler.go
│   │   ├── finance_handler.go
│   │   ├── job_handler.go
│   │   └── dashboard_handler.go
│   ├── repository/              # Database operations
│   │   ├── habit_repository.go
│   │   ├── finance_repository.go
│   │   └── job_repository.go
│   ├── database/                # Database connection & migrations
│   │   └── database.go
│   └── middleware/              # Middleware
│       └── middleware.go
├── config/                      # Configuration
│   └── config.go
├── postman/                     # Postman collection
└── go.mod
```

## 🏃‍♂️ Getting Started

### Prerequisites
- Go 1.21 or higher
- PostgreSQL 12 or higher
- Git

### Installation

1. Clone repository (sudah ada)
```bash
cd e:\project-flutter\lifesync-backend
```

2. Install dependencies
```bash
go mod download
```

3. Setup PostgreSQL Database
Pastikan PostgreSQL sudah terinstall dan berjalan, lalu buat database:
```sql
CREATE DATABASE lifesync;
```

Atau lewat command line:
```bash
psql -U postgres
CREATE DATABASE lifesync;
\q
```

4. Configure environment variables
Copy `.env.example` ke `.env` dan sesuaikan:
```bash
cp .env.example .env
```

Edit `.env`:
```env
DB_HOST=localhost
DB_PORT=5432
DB_USER=postgres
DB_PASSWORD=1234
DB_NAME=lifesync
```

5. Run the server
```bash
go run cmd/api/main.go
```

Server akan berjalan di `http://localhost:8080`

Database tables akan dibuat otomatis saat pertama kali dijalankan (auto-migration).

## 📚 API Documentation

### Base URL
```
http://localhost:8080
```

### Health Check
```
GET /health
```

### Endpoints Overview

#### 🎯 Habits
- `POST /habits` - Create new habit
- `GET /habits` - Get all habits (with pagination)
- `GET /habits/:id` - Get habit by ID
- `PUT /habits/:id` - Update habit
- `DELETE /habits/:id` - Delete habit
- `POST /habits/:id/check` - Mark habit complete/incomplete
- `GET /habits/:id/logs` - Get habit completion logs
- `GET /habits/stats` - Get habit statistics

#### 💰 Finance
**Transactions:**
- `POST /finance/transactions` - Create transaction
- `GET /finance/transactions` - Get all transactions
- `GET /finance/transactions/:id` - Get transaction by ID
- `PUT /finance/transactions/:id` - Update transaction
- `DELETE /finance/transactions/:id` - Delete transaction

**Categories:**
- `POST /finance/categories` - Create category
- `GET /finance/categories` - Get all categories
- `PUT /finance/categories/:id` - Update category
- `DELETE /finance/categories/:id` - Delete category

**Reports:**
- `GET /finance/stats` - Get financial statistics
- `GET /finance/reports/category-summary` - Category spending summary
- `GET /finance/reports/monthly-trend` - Monthly income/expense trend

#### 💼 Jobs
**Applications:**
- `POST /jobs/applications` - Create job application
- `GET /jobs/applications` - Get all applications
- `GET /jobs/applications/:id` - Get application by ID
- `PUT /jobs/applications/:id` - Update application
- `DELETE /jobs/applications/:id` - Delete application
- `POST /jobs/applications/:id/interviews` - Add interview

**Projects:**
- `POST /jobs/projects` - Create project
- `GET /jobs/projects` - Get all projects
- `GET /jobs/projects/:id` - Get project by ID
- `PUT /jobs/projects/:id` - Update project
- `DELETE /jobs/projects/:id` - Delete project
- `POST /jobs/projects/:id/tasks` - Add task to project
- `GET /jobs/projects/:id/tasks` - Get project tasks

**Stats:**
- `GET /jobs/stats` - Get job tracking statistics

#### 📊 Dashboard
- `GET /dashboard/stats` - Get overall dashboard stats

## 🧪 Testing dengan Postman

Import file `postman/LifeSync_API.postman_collection.json` ke Postman untuk testing.

## 📝 Example Requests

### Create Habit
```json
POST /api/v1/habits
{
  "name": "Morning Exercise",
  "description": "30 minutes workout",
  "category": "Health",
  "color": "#10b981",
  "icon": "🏃",
  "frequency": "daily",
  "reminder_time": "06:00"
}
```

### Create Transaction
```json
POST /api/v1/finance/transactions
{
  "type": "expense",
  "amount": 50000,
  "category_id": 1,
  "description": "Lunch at restaurant",
  "date": "2025-10-17",
  "notes": "With team"
}
```

### Create Job Application
```json
POST /api/v1/jobs/applications
{
  "company_name": "Google",
  "position": "Senior Flutter Developer",
  "location": "Remote",
  "work_type": "remote",
  "salary_min": 120000,
  "salary_max": 150000,
  "status": "applied",
  "platform": "LinkedIn"
}
```

### Create Project
```json
POST /api/v1/jobs/projects
{
  "name": "E-Commerce Mobile App",
  "client_name": "TechStartup Inc",
  "project_type": "freelance",
  "status": "in_progress",
  "project_value": 5000,
  "payment_terms": "per_project",
  "payment_status": "unpaid"
}
```

## 🔧 Environment Variables

Create `.env` file:
```env
PORT=8080
ENVIRONMENT=development

# PostgreSQL Configuration
DB_HOST=localhost
DB_PORT=5432
DB_USER=postgres
DB_PASSWORD=1234
DB_NAME=lifesync
DB_SSLMODE=disable
```

## 🗄️ Database

Aplikasi menggunakan PostgreSQL dengan kredensial:
- **Host**: localhost
- **Port**: 5432
- **User**: postgres
- **Password**: 1234
- **Database**: lifesync

### Auto Migration
Database tables akan dibuat otomatis saat server pertama kali dijalankan menggunakan GORM auto-migration.

### Default Categories
Saat pertama kali dijalankan, aplikasi akan membuat kategori default:

**Expense Categories:**
- Food & Dining 🍔
- Transportation 🚗
- Shopping 🛍️
- Entertainment 🎬
- Bills & Utilities 💡
- Healthcare 🏥
- Education 📚
- Others 📦

**Income Categories:**
- Salary 💰
- Freelance 💼
- Investment 📈
- Business 🏢
- Gift 🎁
- Others 💵

## 🚀 Production Deployment

Untuk production, update environment variables dengan kredensial database production Anda:

```env
DB_HOST=your-production-host
DB_PORT=5432
DB_USER=your-user
DB_PASSWORD=your-secure-password
DB_NAME=lifesync_prod
DB_SSLMODE=require
```

## 📦 Build for Production

```bash
go build -o lifesync-api cmd/api/main.go
./lifesync-api
```

## 🤝 Contributing

Contributions are welcome!

## 📄 License

MIT License

## 👨‍💻 Author

Created for LifeSync Project
```
