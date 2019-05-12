#!/bin/bash

# Change the below variables to change the source and destinations
android_path=/storage/emulated/0/termux_projects/node_app/
termux_path=/data/data/com.termux/files/home/termux_projects/shell_scr/dst/

# Inform the user of the destination path
echo "Destination path set: " ${termux_path}
# Change directory to the remote path
cd ${android_path}
echo "Navigating to source path: " $(pwd)

while true; do

	for f in *
	do
		echo "Checking... "${android_path}"${f%}"
		cp -R -u "$f" ${termux_path}"${f%}"
	done

sleep 12
done
