#! /bin/bash

#This fixes 'Permission Denied' issues that can occur when running NPM with sudo, doing a global install.


npm config set user 0
npm config set unsafe-perm true
npm install -g package
