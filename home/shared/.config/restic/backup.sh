#!/bin/bash

set -Eeuo pipefail

source /home/shared/.config/restic/env

LOG_TAG="restic-backup"

echo "Starting backup..."

restic backup \
    --files-from /home/shared/.config/restic/include.txt \
    --exclude-file /home/shared/.config/restic/exclude.txt \
    --tag automated

echo "Applying retention policy..."

restic forget \
    --keep-daily 7 \
    --keep-weekly 4 \
    --keep-monthly 12 \
    --prune

echo "Backup completed."
