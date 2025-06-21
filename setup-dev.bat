@echo off
echo Setting up Kingmaker development environment...
echo.

echo Creating database 'local_kingmaker'...
psql -U root -d postgres -c "DROP DATABASE IF EXISTS local_kingmaker;"
psql -U root -d postgres -c "CREATE DATABASE local_kingmaker;"

if %errorlevel% neq 0 (
    echo ERROR: Database creation failed. Make sure PostgreSQL is running and 'root' user exists.
    pause
    exit /b 1
)

echo Database created successfully!
echo.

echo Installing npm dependencies...
npm install

if %errorlevel% neq 0 (
    echo ERROR: npm install failed.
    pause
    exit /b 1
)

echo.
echo "Development environment setup complete!"
echo "You can now run: npm run start:dev"
pause