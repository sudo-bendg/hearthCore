#!/bin/bash

# Path to your .env file
ENV_FILE="./mongodb.env"

# Check if the file exists
if [[ ! -f "$ENV_FILE" ]]; then
    echo "Error: $ENV_FILE not found"
    exit 1
fi

# Load variables from the file
USERNAME=$(grep '^MONGO_INITDB_ROOT_USERNAME=' "$ENV_FILE" | cut -d '=' -f2)
PASSWORD=$(grep '^MONGO_INITDB_ROOT_PASSWORD=' "$ENV_FILE" | cut -d '=' -f2)
DBNAME=$(grep '^MONGO_DB_NAME=' "$ENV_FILE" | cut -d '=' -f2)

# Build the connection string with authSource=admin
CONNECTION_STRING="mongodb://${USERNAME}:${PASSWORD}@localhost:27017/${DBNAME}?authSource=admin"

# Output it
echo "$CONNECTION_STRING"

