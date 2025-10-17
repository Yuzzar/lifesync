#!/bin/bash

echo "========================================"
echo "  LifeSync Backend Server"
echo "========================================"
echo ""
echo "Checking PostgreSQL connection..."
echo ""

# Check if database exists, if not create it
if ! psql -U postgres -lqt | cut -d \| -f 1 | grep -qw lifesync; then
    echo "Database 'lifesync' not found. Creating..."
    psql -U postgres -c "CREATE DATABASE lifesync;"
    if [ $? -eq 0 ]; then
        echo "Database created successfully!"
    else
        echo "Failed to create database. Please create it manually."
        echo "Run: psql -U postgres"
        echo "Then: CREATE DATABASE lifesync;"
        exit 1
    fi
else
    echo "Database 'lifesync' found."
fi

echo ""
echo "Starting server on http://localhost:8080"
echo ""
echo "Press Ctrl+C to stop the server"
echo "========================================"
echo ""

go run cmd/api/main.go
