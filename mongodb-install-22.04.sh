#!/bin/bash

# update package list
sudo apt update

echo "Package list updated successfully"

# install dependencies
sudo apt install -y dirmngr gnupg apt-transport-https ca-certificates software-properties-common

echo "Dependencies installed successfully"

# import MongoDB public GPG key

wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -

echo "MongoDB public GPG key imported successfully"

# add MongoDB repository

echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list

echo "MongoDB repository added successfully"

# update package list again

sudo apt update

echo "Package list updated successfully"

# install MongoDB

sudo apt-get install -y mongodb-org

echo "MongoDB installed successfully"

# start MongoDB

sudo systemctl start mongod

echo "MongoDB started successfully"

# enable MongoDB

sudo systemctl enable mongod

echo "MongoDB enabled successfully"

# check MongoDB status

sudo systemctl status mongod

echo "MongoDB status checked successfully"




