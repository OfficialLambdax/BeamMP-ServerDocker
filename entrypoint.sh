#!/bin/bash

# Create resources folder
mkdir -p ./Resources/Client
mkdir -p ./Resources/Server

# create symlinks from all bound server resources within /Server/ to the server resources
for dir in /Server/
do
	ln -vrs $dir/* ./Resources/Server
done
# do same for client resources
for dir in /Client/
do
	ln -vrs $dir/* ./Resources/Client
done
