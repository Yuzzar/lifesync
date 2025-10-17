# PostgreSQL Setup Guide for LifeSync

## 📦 Installation

### Windows

1. **Download PostgreSQL**
   - Kunjungi: https://www.postgresql.org/download/windows/
   - Download PostgreSQL installer (versi 12 atau lebih tinggi)

2. **Install PostgreSQL**
   - Jalankan installer
   - Set password untuk user `postgres`: `1234` (sesuai config)
   - Port default: `5432`
   - Finish installation

3. **Verifikasi Installasi**
   ```bash
   psql --version
   ```

### macOS

```bash
# Using Homebrew
brew install postgresql@14
brew services start postgresql@14

# Create user if needed
createuser -s postgres
```

### Linux (Ubuntu/Debian)

```bash
# Install PostgreSQL
sudo apt update
sudo apt install postgresql postgresql-contrib

# Start service
sudo systemctl start postgresql
sudo systemctl enable postgresql

# Set password for postgres user
sudo -u postgres psql
ALTER USER postgres PASSWORD '1234';
\q
```

## 🗄️ Database Setup

### Cara 1: Menggunakan psql Command Line

```bash
# Login ke PostgreSQL
psql -U postgres

# Create database
CREATE DATABASE lifesync;

# Verify database
\l

# Exit
\q
```

### Cara 2: Menggunakan pgAdmin

1. Buka pgAdmin
2. Connect ke PostgreSQL server (localhost)
3. Right-click "Databases" → Create → Database
4. Name: `lifesync`
5. Save

### Cara 3: Automatic (menggunakan script)

**Windows:**
```bash
.\run.bat
```

**Linux/Mac:**
```bash
chmod +x run.sh
./run.sh
```

## 🔧 Configuration

Kredensial database sudah dikonfigurasi di `.env`:

```env
DB_HOST=localhost
DB_PORT=5432
DB_USER=postgres
DB_PASSWORD=1234
DB_NAME=lifesync
DB_SSLMODE=disable
```

## ✅ Verifikasi Connection

Setelah database dibuat, jalankan server:

```bash
go run cmd/api/main.go
```

Jika berhasil, Anda akan melihat:
```
✅ Database connected successfully
🔄 Running database migrations...
✅ Database migrations completed
🌱 Seeding default data...
✅ Default data seeded successfully
🚀 Server is starting on port 8080
```

## 🧪 Test Connection

Buka browser atau Postman:
```
http://localhost:8080/health
```

Response:
```json
{
  "status": "ok",
  "message": "LifeSync API is running"
}
```

## 📊 View Database

### Using psql

```bash
# Connect to database
psql -U postgres -d lifesync

# List all tables
\dt

# View categories
SELECT * FROM categories;

# Exit
\q
```

### Using pgAdmin

1. Open pgAdmin
2. Navigate to: Servers → PostgreSQL → Databases → lifesync → Schemas → public → Tables
3. Right-click table → View/Edit Data → All Rows

## 🔍 Troubleshooting

### Error: "password authentication failed for user postgres"

```bash
# Reset password
psql -U postgres
ALTER USER postgres WITH PASSWORD '1234';
```

### Error: "database lifesync does not exist"

```bash
psql -U postgres
CREATE DATABASE lifesync;
```

### Error: "could not connect to server"

- Pastikan PostgreSQL service berjalan
- Windows: Services → PostgreSQL → Start
- Linux: `sudo systemctl start postgresql`
- Mac: `brew services start postgresql`

### Port 5432 sudah digunakan

Edit `.env` dan ubah `DB_PORT` ke port yang tersedia:
```env
DB_PORT=5433
```

## 🗑️ Reset Database (Development Only)

```bash
# Drop and recreate database
psql -U postgres
DROP DATABASE lifesync;
CREATE DATABASE lifesync;
\q

# Restart server untuk auto-migration
go run cmd/api/main.go
```

## 📚 Useful PostgreSQL Commands

```sql
-- List all databases
\l

-- Connect to database
\c lifesync

-- List all tables
\dt

-- Describe table structure
\d habits
\d transactions
\d job_applications

-- Count records
SELECT COUNT(*) FROM habits;
SELECT COUNT(*) FROM transactions;

-- View recent data
SELECT * FROM habits ORDER BY created_at DESC LIMIT 10;
SELECT * FROM transactions ORDER BY created_at DESC LIMIT 10;

-- Delete all data (keep tables)
TRUNCATE habits, habit_logs, transactions, categories, job_applications, interviews, projects, project_tasks, milestones RESTART IDENTITY CASCADE;
```

## 🔐 Security Notes

**⚠️ PENTING untuk Production:**

1. **Ubah password default!**
   ```sql
   ALTER USER postgres WITH PASSWORD 'secure-random-password-here';
   ```

2. **Update `.env`:**
   ```env
   DB_PASSWORD=secure-random-password-here
   DB_SSLMODE=require
   ```

3. **Buat dedicated user:**
   ```sql
   CREATE USER lifesync_user WITH PASSWORD 'another-secure-password';
   GRANT ALL PRIVILEGES ON DATABASE lifesync TO lifesync_user;
   ```

4. **Update `.env` dengan user baru:**
   ```env
   DB_USER=lifesync_user
   DB_PASSWORD=another-secure-password
   ```
