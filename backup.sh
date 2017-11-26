#!/bin/bash

bold=$(tput bold)
norm=$(tput sgr0)

echo "@ Backup started."

ROOT="$( cd "$( dirname "../${BASH_SOURCE[0]}" )" && pwd )"
for n in $(seq 0 9)
do
    backup_path="$ROOT/backup_$n"
    if [ -d "$backup_path" ]; then
        echo "@ Found ${bold}$backup_path${norm} ..."
        ./backup_to.sh "$backup_path"
        echo 
    fi
done
