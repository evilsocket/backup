#!/bin/bash

bold=$(tput bold)
norm=$(tput sgr0)

# EDIT ME!
TO_BACKUP=(
    data
    code
    misc
    backup_to.sh
    backup.sh
    backup.desktop
)

if [ $# -eq 0 ]
  then
    echo "Usage: $0 /path/of/backup/drive"
    exit 0
fi

backup_path="$1"
if [ ! -d "$backup_path" ]; then
    echo "$backup_path : path does not exist."
    exit 1
fi

ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for folder in "${TO_BACKUP[@]}"
do
    dest="$backup_path/${folder}"
    log="$backup_path/backup.log"
    echo "  ${bold}$folder${norm} > "$dest" ..."
    date > "$log"
    echo >> "$log"
    rsync -vazP --delete "$ROOT/$folder" "$dest" >> "$log"
done

sync
