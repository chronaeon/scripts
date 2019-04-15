#!/bin/bash
port=3333
nc -l $port | while read msg; do zenity --info --text "$msg"; done
