#!/bin/bash

echo "Setting up Kingmaker development environment..."
echo

echo "Creating database 'local_kingmaker'..."
psql -U root -d postgres -c "DROP DATABASE IF EXISTS local_kingmaker;"
psql -U root -d postgres -c "CREATE DATABASE local_kingmaker;"

if [ $? -ne 0 ]; then
    echo "ERROR: Database creation failed. Make sure PostgreSQL is running and 'root' user exists."
    exit 1
fi

echo "Database created successfully!"
echo

echo "Installing npm dependencies..."
npm install

if [ $? -ne 0 ]; then
    echo "ERROR: npm install failed."
    exit 1
fi

echo
echo "Development environment setup complete!"
echo "You can now run: npm run start:dev"