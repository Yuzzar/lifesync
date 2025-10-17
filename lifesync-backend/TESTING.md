# LifeSync API Testing Guide

## Test dengan cURL

### 1. Health Check
```bash
curl http://localhost:8080/health
```

Expected Response:
```json
{
  "message": "LifeSync API is running",
  "status": "ok"
}
```

### 2. Get Dashboard Stats
```bash
curl http://localhost:8080/api/v1/dashboard/stats
```

### 3. Create Habit
```bash
curl -X POST http://localhost:8080/api/v1/habits \
  -H "Content-Type: application/json" \
  -d "{\"name\":\"Morning Exercise\",\"description\":\"30 min workout\",\"category\":\"Health\",\"color\":\"#10b981\",\"icon\":\"🏃\",\"frequency\":\"daily\"}"
```

### 4. Get All Habits
```bash
curl http://localhost:8080/api/v1/habits
```

### 5. Check Habit (Mark as Complete)
```bash
curl -X POST http://localhost:8080/api/v1/habits/1/check \
  -H "Content-Type: application/json" \
  -d "{\"date\":\"2025-10-17\",\"completed\":true,\"notes\":\"Done!\"}"
```

### 6. Get Finance Categories
```bash
curl http://localhost:8080/api/v1/finance/categories
```

### 7. Create Transaction
```bash
curl -X POST http://localhost:8080/api/v1/finance/transactions \
  -H "Content-Type: application/json" \
  -d "{\"type\":\"expense\",\"amount\":50000,\"category_id\":1,\"description\":\"Lunch\",\"date\":\"2025-10-17\"}"
```

### 8. Get Finance Stats
```bash
curl http://localhost:8080/api/v1/finance/stats
```

### 9. Create Job Application
```bash
curl -X POST http://localhost:8080/api/v1/jobs/applications \
  -H "Content-Type: application/json" \
  -d "{\"company_name\":\"Google\",\"position\":\"Flutter Developer\",\"status\":\"applied\",\"location\":\"Remote\"}"
```

### 10. Create Project
```bash
curl -X POST http://localhost:8080/api/v1/jobs/projects \
  -H "Content-Type: application/json" \
  -d "{\"name\":\"E-Commerce App\",\"client_name\":\"Tech Inc\",\"status\":\"in_progress\",\"project_value\":5000}"
```

## Test dengan PowerShell (Windows)

### Health Check
```powershell
Invoke-RestMethod -Uri "http://localhost:8080/health" -Method GET
```

### Create Habit
```powershell
$body = @{
    name = "Morning Exercise"
    description = "30 minutes workout"
    category = "Health"
    color = "#10b981"
    icon = "🏃"
    frequency = "daily"
} | ConvertTo-Json

Invoke-RestMethod -Uri "http://localhost:8080/api/v1/habits" -Method POST -Body $body -ContentType "application/json"
```

### Get All Habits
```powershell
Invoke-RestMethod -Uri "http://localhost:8080/api/v1/habits" -Method GET
```

## Test dengan Postman

1. Import collection dari: `postman/LifeSync_API.postman_collection.json`
2. Set environment variable:
   - `base_url`: `http://localhost:8080/api/v1`
3. Run requests dari collection

## Expected Results

### Success Response Format
```json
{
  "success": true,
  "message": "Operation successful",
  "data": { ... }
}
```

### Error Response Format
```json
{
  "success": false,
  "message": "Error description",
  "error": "Detailed error"
}
```

### Paginated Response Format
```json
{
  "success": true,
  "message": "Data retrieved",
  "data": [...],
  "meta": {
    "current_page": 1,
    "per_page": 20,
    "total_pages": 1,
    "total_items": 5
  }
}
```

## Verify Database

### Check Data in PostgreSQL
```bash
# Connect to database
psql -U postgres -d lifesync

# List tables
\dt

# View categories
SELECT * FROM categories;

# View habits
SELECT * FROM habits;

# View transactions
SELECT * FROM transactions;

# Exit
\q
```

## Performance Testing

### Using Apache Bench
```bash
# Test 100 requests with 10 concurrent
ab -n 100 -c 10 http://localhost:8080/health
```

### Using wrk
```bash
wrk -t12 -c400 -d30s http://localhost:8080/health
```
