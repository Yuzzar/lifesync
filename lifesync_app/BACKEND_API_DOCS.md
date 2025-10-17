# 📡 LifeSync Backend API Documentation

**Base URL:** `http://localhost:8080`

## 🔍 Overview

Backend menggunakan **Golang + Gin Framework** dengan **PostgreSQL** database.
Semua response menggunakan format standard:

```json
{
  "success": true,
  "message": "Success message",
  "data": { ... }
}
```

---

## 🏥 Health Check

### GET /health
Check apakah API server running.

**Response:**
```json
{
  "status": "ok",
  "message": "LifeSync API is running"
}
```

---

## 📊 Dashboard API

### GET /dashboard/stats
Ambil semua statistik dashboard (Habits + Finance + Jobs).

**Response:**
```json
{
  "success": true,
  "message": "Dashboard stats retrieved successfully",
  "data": {
    "habit_stats": {
      "total_habits": 5,
      "active_habits": 4,
      "completed_today": 3,
      "today_completion_rate": 75.0,
      "weekly_completion_rate": 68.5,
      "best_streak": 15,
      "current_active_streak": 7
    },
    "finance_stats": {
      "total_income": 15000000.0,
      "total_expense": 8500000.0,
      "balance": 6500000.0,
      "monthly_income": 5000000.0,
      "monthly_expense": 3200000.0,
      "monthly_balance": 1800000.0,
      "top_categories": [...],
      "budget_utilization": 65.0
    },
    "job_stats": {
      "total_applications": 12,
      "active_applications": 5,
      "interviews_scheduled": 3,
      "offers_received": 1,
      "total_projects": 8,
      "active_projects": 3,
      "completed_projects": 5,
      "total_earnings": 25000000.0,
      "pending_payments": 5000000.0,
      "applications_by_status": {
        "applied": 3,
        "interview": 2,
        "rejected": 4,
        "accepted": 1
      }
    },
    "quick_actions": [...],
    "upcoming_events": [...]
  }
}
```

---

## ✅ Habits API

### 1. GET /habits
Ambil semua habits.

**Response:**
```json
{
  "success": true,
  "message": "Habits retrieved successfully",
  "data": [
    {
      "id": 1,
      "name": "Morning Exercise",
      "description": "30 minutes cardio",
      "category": "Health",
      "color": "#10b981",
      "icon": "🏃",
      "frequency": "daily",
      "target_days": "",
      "reminder_time": "06:00",
      "is_active": true,
      "current_streak": 7,
      "best_streak": 15,
      "total_completed": 45,
      "created_at": "2025-01-15T10:30:00Z",
      "updated_at": "2025-01-17T06:00:00Z"
    }
  ]
}
```

**Field Explanation:**
- `frequency`: "daily" atau "weekly"
- `target_days`: Untuk weekly, isi dengan "Mon,Wed,Fri" (kosong untuk daily)
- `reminder_time`: Format "HH:MM" (24-hour format)
- `is_active`: true = habit masih aktif, false = archived

---

### 2. GET /habits/:id
Ambil detail habit berdasarkan ID.

**Response:** Same as single habit object above.

---

### 3. POST /habits
Buat habit baru.

**Request Body:**
```json
{
  "name": "Read Book",
  "description": "Read for 30 minutes",
  "category": "Learning",
  "color": "#6366f1",
  "icon": "📚",
  "frequency": "daily",
  "target_days": "",
  "reminder_time": "20:00"
}
```

**Required Fields:**
- `name` (string)
- `category` (string)

**Optional Fields:**
- `description`, `color`, `icon`, `frequency`, `target_days`, `reminder_time`

**Response:** Returns created habit object.

---

### 4. PUT /habits/:id
Update habit.

**Request Body:** (Semua field optional)
```json
{
  "name": "Updated Name",
  "is_active": false
}
```

**Response:** Returns updated habit object.

---

### 5. DELETE /habits/:id
Hapus habit.

**Response:**
```json
{
  "success": true,
  "message": "Habit deleted successfully"
}
```

---

### 6. POST /habits/:id/check
Check/uncheck habit untuk hari tertentu.

**Request Body:**
```json
{
  "date": "2025-01-17",
  "completed": true,
  "notes": "Did extra 10 minutes today"
}
```

**Response:** Returns habit log object.

---

### 7. GET /habits/:id/logs
Ambil log history habit.

**Response:**
```json
{
  "success": true,
  "message": "Habit logs retrieved successfully",
  "data": [
    {
      "id": 1,
      "habit_id": 1,
      "date": "2025-01-17",
      "completed": true,
      "notes": "Did extra 10 minutes today",
      "created_at": "2025-01-17T06:30:00Z",
      "updated_at": "2025-01-17T06:30:00Z"
    }
  ]
}
```

---

### 8. GET /habits/stats
Ambil statistik habits.

**Response:** Returns HabitStats object (same as dashboard).

---

## 💰 Finance API

### 1. GET /finance/transactions
Ambil semua transaksi.

**Query Parameters:**
- `type`: "income" atau "expense" (optional)
- `category_id`: Filter by category (optional)
- `start_date`: YYYY-MM-DD (optional)
- `end_date`: YYYY-MM-DD (optional)

**Response:**
```json
{
  "success": true,
  "message": "Transactions retrieved successfully",
  "data": [
    {
      "id": 1,
      "type": "income",
      "amount": 5000000.0,
      "category_id": 1,
      "description": "Monthly Salary",
      "date": "2025-01-15",
      "notes": "",
      "is_recurring": true,
      "recurring_frequency": "monthly",
      "created_at": "2025-01-15T10:00:00Z",
      "updated_at": "2025-01-15T10:00:00Z",
      "category": {
        "id": 1,
        "name": "Salary",
        "type": "income",
        "icon": "💵",
        "color": "#10b981"
      }
    }
  ]
}
```

**Field Explanation:**
- `type`: "income" atau "expense"
- `amount`: Float64 (contoh: 5000000.0)
- `date`: Format "YYYY-MM-DD"
- `recurring_frequency`: "monthly", "weekly", "yearly"

---

### 2. GET /finance/transactions/:id
Ambil detail transaksi.

**Response:** Single transaction object.

---

### 3. POST /finance/transactions
Buat transaksi baru.

**Request Body:**
```json
{
  "type": "expense",
  "amount": 150000.0,
  "category_id": 3,
  "description": "Lunch at restaurant",
  "date": "2025-01-17",
  "notes": "Team lunch",
  "is_recurring": false
}
```

**Required Fields:**
- `type` (must be "income" or "expense")
- `amount` (must be > 0)
- `category_id`
- `date`

**Response:** Returns created transaction.

---

### 4. PUT /finance/transactions/:id
Update transaksi.

**Request Body:** (All fields optional)
```json
{
  "amount": 175000.0,
  "description": "Updated description"
}
```

**Response:** Returns updated transaction.

---

### 5. DELETE /finance/transactions/:id
Hapus transaksi.

---

### 6. GET /finance/categories
Ambil semua kategori.

**Query Parameters:**
- `type`: "income" atau "expense" (optional)

**Response:**
```json
{
  "success": true,
  "message": "Categories retrieved successfully",
  "data": [
    {
      "id": 1,
      "name": "Salary",
      "type": "income",
      "icon": "💵",
      "color": "#10b981",
      "budget": 0.0,
      "is_default": true,
      "created_at": "2025-01-01T00:00:00Z",
      "updated_at": "2025-01-01T00:00:00Z"
    }
  ]
}
```

---

### 7. POST /finance/categories
Buat kategori baru.

**Request Body:**
```json
{
  "name": "Investments",
  "type": "income",
  "icon": "📈",
  "color": "#6366f1",
  "budget": 1000000.0
}
```

**Required Fields:**
- `name`
- `type` (must be "income" or "expense")

---

### 8. PUT /finance/categories/:id
Update kategori.

---

### 9. DELETE /finance/categories/:id
Hapus kategori.

---

### 10. GET /finance/stats
Ambil statistik keuangan.

**Query Parameters:**
- `start_date`: YYYY-MM-DD (optional)
- `end_date`: YYYY-MM-DD (optional)

**Response:** Returns FinanceStats object.

---

### 11. GET /finance/reports/category-summary
Ambil summary per kategori.

**Response:**
```json
{
  "success": true,
  "message": "Category summary retrieved successfully",
  "data": [
    {
      "category_id": 3,
      "category_name": "Food",
      "total_amount": 1500000.0,
      "percentage": 35.5,
      "transaction_count": 25
    }
  ]
}
```

---

### 12. GET /finance/reports/monthly-trend
Ambil trend bulanan.

---

## 💼 Jobs API

### 1. GET /jobs/applications
Ambil semua job applications.

**Query Parameters:**
- `status`: Filter by status (optional)
- `company_name`: Search by company (optional)

**Response:**
```json
{
  "success": true,
  "message": "Job applications retrieved successfully",
  "data": [
    {
      "id": 1,
      "company_name": "Google",
      "position": "Senior Flutter Developer",
      "company_logo": "",
      "company_website": "https://google.com",
      "job_description": "Looking for experienced Flutter dev...",
      "location": "Remote",
      "work_type": "remote",
      "salary_min": 25000000.0,
      "salary_max": 35000000.0,
      "currency": "IDR",
      "status": "interview",
      "priority": 5,
      "platform": "LinkedIn",
      "job_url": "https://linkedin.com/jobs/123",
      "applied_date": "2025-01-10T00:00:00Z",
      "cv_version": "Flutter_Senior_v3",
      "cover_letter": "",
      "referral_name": "",
      "referral_contact": "",
      "notes": "Great opportunity",
      "last_follow_up": null,
      "next_follow_up": null,
      "created_at": "2025-01-10T10:00:00Z",
      "updated_at": "2025-01-15T14:30:00Z"
    }
  ]
}
```

**Field Explanation:**
- `position`: Job position/title (NOT position_title!)
- `work_type`: "remote", "onsite", "hybrid"
- `salary_min`, `salary_max`: Float64 (NOT int!)
- `status`: "wishlist", "applied", "interview", "technical_test", "offering", "accepted", "rejected", "archived"
- `applied_date`: DateTime nullable (bisa null)

---

### 2. GET /jobs/applications/:id
Ambil detail job application.

---

### 3. POST /jobs/applications
Buat job application baru.

**Request Body:**
```json
{
  "company_name": "Microsoft",
  "position": "Flutter Developer",
  "location": "Jakarta",
  "work_type": "hybrid",
  "salary_min": 20000000.0,
  "salary_max": 30000000.0,
  "currency": "IDR",
  "status": "wishlist",
  "job_url": "https://careers.microsoft.com/123",
  "notes": "Interesting position"
}
```

**Required Fields:**
- `company_name`
- `position`
- `status`

**Optional DateTime Fields:**
- `applied_date`: Send as ISO 8601 string atau null

---

### 4. PUT /jobs/applications/:id
Update job application.

**Request Body:** (All fields optional)
```json
{
  "status": "interview",
  "notes": "Updated notes"
}
```

---

### 5. DELETE /jobs/applications/:id
Hapus job application.

---

### 6. POST /jobs/applications/:id/interviews
Create interview untuk job application.

**Request Body:**
```json
{
  "round": 1,
  "interview_type": "hr",
  "interview_date": "2025-01-20T14:00:00Z",
  "interviewer_name": "Jane Doe",
  "location": "Zoom meeting link",
  "duration": 60,
  "notes": "Prepare behavioral questions"
}
```

---

### 7. GET /jobs/projects
Ambil semua projects.

**Response:**
```json
{
  "success": true,
  "message": "Projects retrieved successfully",
  "data": [
    {
      "id": 1,
      "name": "E-commerce Mobile App",
      "description": "Full-stack Flutter app with backend",
      "client_name": "PT. ABC Corp",
      "client_email": "client@abc.com",
      "client_phone": "+6281234567890",
      "project_type": "freelance",
      "status": "in_progress",
      "priority": 5,
      "tags": "flutter,firebase,api",
      "project_value": 15000000.0,
      "currency": "IDR",
      "payment_terms": "per_milestone",
      "payment_status": "partial",
      "invoice_number": "INV-2025-001",
      "hourly_rate": 250000.0,
      "estimated_hours": 80.0,
      "actual_hours": 45.5,
      "progress_percent": 60,
      "start_date": "2025-01-01T00:00:00Z",
      "end_date": "2025-02-28T00:00:00Z",
      "completed_at": null,
      "notes": "Client wants weekly updates",
      "created_at": "2025-01-01T10:00:00Z",
      "updated_at": "2025-01-17T15:00:00Z"
    }
  ]
}
```

**Field Explanation:**
- `project_type`: "freelance", "side_project", "commission"
- `status`: "backlog", "todo", "in_progress", "in_review", "completed", "on_hold"
- `payment_terms`: "per_hour", "per_project", "per_milestone"
- `payment_status`: "unpaid", "partial", "paid"
- `start_date`, `end_date`: DateTime nullable

---

### 8. GET /jobs/projects/:id
Ambil detail project.

---

### 9. POST /jobs/projects
Buat project baru.

**Request Body:**
```json
{
  "name": "Website Redesign",
  "description": "Redesign company website",
  "client_name": "PT. XYZ",
  "project_type": "freelance",
  "status": "todo",
  "project_value": 10000000.0,
  "currency": "IDR",
  "payment_terms": "per_project",
  "start_date": "2025-02-01T00:00:00Z"
}
```

**Required Fields:**
- `name`
- `status`

---

### 10. PUT /jobs/projects/:id
Update project.

---

### 11. DELETE /jobs/projects/:id
Hapus project.

---

### 12. POST /jobs/projects/:id/tasks
Create task untuk project.

---

### 13. GET /jobs/projects/:id/tasks
Ambil semua tasks dari project.

---

### 14. GET /jobs/stats
Ambil statistik jobs.

**Response:** Returns JobStats object.

---

## 🔑 Important Notes untuk Flutter

### 1. **Field Names** (Snake Case di Backend)
Backend pakai `snake_case`, Flutter pakai `camelCase`.
Freezed dengan `@JsonKey` akan otomatis convert:

```dart
@freezed
class Habit with _$Habit {
  factory Habit({
    required int id,
    required String name,
    @JsonKey(name: 'category') required String category,
    @JsonKey(name: 'target_days') required String targetDays,
    @JsonKey(name: 'current_streak') required int currentStreak,
    // ...
  }) = _Habit;
}
```

### 2. **Nullable Fields**
Beberapa field bisa `null` di backend:
- `applied_date` (DateTime?)
- `start_date` (DateTime?)
- `end_date` (DateTime?)
- `last_follow_up` (DateTime?)

Di Flutter harus pakai nullable type `DateTime?`

### 3. **Number Types**
- Backend `float64` → Flutter `double`
- Backend `int` → Flutter `int`

JANGAN pakai `int` untuk salary/amount!

### 4. **Date Format**
- Tanggal biasa: `"YYYY-MM-DD"` (string)
- DateTime: ISO 8601 `"2025-01-17T10:30:00Z"`

### 5. **Response Wrapper**
Semua response dibungkus dalam:
```json
{
  "success": true,
  "message": "...",
  "data": { ... }
}
```

Di Flutter perlu extract `data` field:
```dart
final response = await dio.get('/habits');
final data = response.data['data']; // Extract data
return (data as List).map((e) => Habit.fromJson(e)).toList();
```

---

## 🚀 Testing Endpoints

### Via Postman:
Import file: `lifesync-backend/postman/LifeSync_API.postman_collection.json`

### Via Terminal:
```bash
# Health check
curl http://localhost:8080/health

# Get all habits
curl http://localhost:8080/habits

# Create habit
curl -X POST http://localhost:8080/habits \
  -H "Content-Type: application/json" \
  -d '{
    "name": "Test Habit",
    "category": "Health"
  }'

# Get dashboard stats
curl http://localhost:8080/dashboard/stats
```

---

## 📝 Error Responses

Jika error, format response:
```json
{
  "success": false,
  "message": "Error message",
  "error": "Detailed error description"
}
```

HTTP Status Codes:
- `200` - Success
- `201` - Created
- `400` - Bad Request (validation error)
- `404` - Not Found
- `500` - Internal Server Error

---

## 🔧 Running Backend

```bash
# Terminal 1: Start PostgreSQL (if not running)

# Terminal 2: Start Backend
cd e:\project-flutter\lifesync-backend
go run cmd\api\main.go

# Output:
# 🚀 Server is starting on port 8080
# 📝 API documentation: http://localhost:8080/health
# 🔗 Base URL: http://localhost:8080
```

---

## ✨ Summary

### Habits Module
- 8 endpoints (CRUD + check + logs + stats)
- Key fields: `category`, `target_days`, `current_streak`, `best_streak`, `total_completed`

### Finance Module
- 12 endpoints (transactions + categories + reports)
- Key fields: `amount` (float64), `category_id`, `type` (income/expense)

### Jobs Module
- 14 endpoints (applications + projects + tasks)
- Key fields: `position` (NOT position_title!), `salary_min/max` (float64), `applied_date` (nullable)

### Dashboard
- 1 endpoint (gabungan semua stats)
- Returns: HabitStats + FinanceStats + JobStats

**Total:** 35 API endpoints siap pakai! 🎉
