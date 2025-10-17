# ⚠️ PENTING: URL API Sudah Diubah!

## 🔥 URL Baru (Tanpa /api/v1)

Semua endpoint sekarang **TIDAK** menggunakan prefix `/api/v1` lagi.

### ❌ URL LAMA (Akan 404):
```
POST http://localhost:8080/api/v1/habits
POST http://localhost:8080/api/v1/finance/transactions
```

### ✅ URL BARU (Yang Benar):
```
POST http://localhost:8080/habits
POST http://localhost:8080/finance/transactions
POST http://localhost:8080/jobs/applications
```

## 🚀 Quick Test

### Test 1: Health Check
```bash
curl http://localhost:8080/health
```

### Test 2: Create Habit
```bash
curl -X POST http://localhost:8080/habits ^
-H "Content-Type: application/json" ^
-d "{\"name\":\"Morning Run\",\"category\":\"Health\",\"frequency\":\"daily\"}"
```

### Test 3: Get Categories
```bash
curl http://localhost:8080/finance/categories
```

### Test 4: Create Transaction
```bash
curl -X POST http://localhost:8080/finance/transactions ^
-H "Content-Type: application/json" ^
-d "{\"type\":\"expense\",\"amount\":50000,\"category_id\":1,\"description\":\"Lunch\",\"date\":\"2025-10-17\"}"
```

### Test 5: Dashboard Stats
```bash
curl http://localhost:8080/dashboard/stats
```

## 📝 Postman Collection

Postman collection sudah diupdate! Import file ini:
```
postman/LifeSync_API.postman_collection.json
```

Variable `{{base_url}}` sekarang: `http://localhost:8080` (tanpa /api/v1)

## 🔄 Restart Server

Setelah perubahan ini, **WAJIB restart server**:

1. Stop server yang running (Ctrl+C)
2. Jalankan ulang:
```bash
go run cmd\api\main.go
```

Atau:
```bash
.\run.bat
```

## ✅ Checklist

- [ ] Server sudah di-restart
- [ ] Test health check berhasil (200 OK)
- [ ] Postman collection sudah di-import ulang
- [ ] URL sudah tidak pakai `/api/v1`

## 📞 Support

Jika masih 404:
1. Pastikan server running di port 8080
2. Cek tidak ada typo di URL
3. Pastikan menggunakan method yang benar (GET/POST/PUT/DELETE)
