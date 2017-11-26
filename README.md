Backup scripts I use on my drives, instructions:

0) Copy `backup*.*` on your drive root.
1) Edit the `TO_BACKUP` list of folders and files you want to backup in the `backup_to.sh` script.
2) Execute the `backup.sh` script or click on the `backup.desktop` file ( only on GNU/Linux ).

The script will loop for every `backup_0` to `backup_9` folder mounted in the same base folder of your drive and perform a `rsync` of your drive to that.

Tip: you can have `/media/backup_0` mounted with `sshfs` to your backup server for instance.

## License

Those scripts were made with ♥  by [Simone Margaritelli](https://www.evilsocket.net/) and are released under the GPL 3 license.

