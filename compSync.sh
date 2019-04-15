#! /bin/bash

rsync -rP --copy-links --ignore-existing micah@192.168.1.41:/home/micah/* /home/micah/
rsync -rP --copy-links --ignore-existing micah@192.168.1.41:/home/micah/.* /home/micah/


scp -r 192.168.1.41:~/.vscode/*  ~/.vscode
