#!/usr/bin/env bash
# backup.sh - zip a folder into a dated archive and delete old backups
set -euo pipefail

SRC="${1:?Usage: backup.sh <source_dir> <backup_dir> [keep_days]}"
DEST="${2:?Usage: backup.sh <source_dir> <backup_dir> [keep_days]}"
KEEP_DAYS="${3:-7}"

if [ ! -d "$SRC" ]; then
  echo "Error: source '$SRC' is not a directory" >&2
  exit 1
fi

mkdir -p "$DEST"
STAMP="$(date +%Y-%m-%d_%H-%M-%S)"
ARCHIVE="$DEST/backup_${STAMP}.tar.gz"

tar -czf "$ARCHIVE" -C "$(dirname "$SRC")" "$(basename "$SRC")"
echo "Backup created: $ARCHIVE"

find "$DEST" -name 'backup_*.tar.gz' -mtime +"$KEEP_DAYS" -delete
echo "Removed backups older than $KEEP_DAYS days"
