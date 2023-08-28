#!/bin/bash

CNT_NAME="postgres"
DB_USER="guacamole"
DB_NAME="guacamole_db"
TIMESTAMP=$(date +%Y_%m_%d_%H_%M)
# File paths inside the container and on the host
PATHFILE="/opt/docker/postgres/backup"
#HOST_BACKUP_PATH="/path/on/host/backupfile.backup"
# Access the PostgreSQL container and perform backup
#pg_dump -U "$DB_USER" -d "$DB_NAME" > "$PATHFILE/backup_$TIMESTAMP.sql"

docker exec -t $CNT_NAME pg_dump -c -U "$DB_USER" -d "$DB_NAME" > "$PATHFILE/backup_$TIMESTAMP.sql"
# Copy the backup from container to host

#docker cp "$POSTGRES_CONTAINER:$CONTAINER_BACKUP_PATH" "$HOST_BACKUP_PATH"
