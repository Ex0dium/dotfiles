#!/bin/bash

####################################
#
# Backup script.
# It only uploads what matters, not raw game content which doesn't change
#
####################################

# documents, videos etc
backup_files="$(xdg-user-dir DESKTOP) $(xdg-user-dir DOCUMENTS) $(xdg-user-dir PICTURES) $(xdg-user-dir VIDEOS) $(xdg-user-dir MUSIC)" 
backup_files+=" $HOME/dotfiles $HOME/dev"

# game saves
backup_files+=' $HOME/.local/share/SuperMeatBoy $HOME/.local/share/Celeste $HOME/.minecraft/saves \"$HOME/.config/unity3d/Ludeon Studios/RimWorld by Ludeon Studios/Saves\"'


# Where to backup to.
dest="$HOME"

hostname=$(hostname -s)
archive_file="$USER-$hostname-$(date +%Y-%m-%d).tar.gz"

echo "Deleting $archive_file"
rm $archive_file
# Print start status message.
notify-send -t 15000 "Backup utility" "Backing up $backup_files to $dest/$archive_file"

# Backup the files using tar.
tar -c -z -f $dest/$archive_file --totals $backup_files


notify-send -t 60000 -u critical "Backup utility" "Backup done for: \n$backup_files\n"

