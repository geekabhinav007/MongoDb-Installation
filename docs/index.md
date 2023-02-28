# Installtion Steps

Step 1: Perform System Update

```bash
sudo apt-get update
sudo apt-get upgrade
```

```bash
sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common
```

Step 2: Import MongoDB GPG Key

```bash
sudo wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
```

Step 3: Configure MongoDB Repo

```bash
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
```

## Installation for ubuntu 22.04

```bash
sudo apt-get update
sudo apt install mongodb-org
```

## Starting System

```bash
sudo systemctl start mongod
```

```bash
sudo systemctl enable --now mongod
```

```bash
sudo systemctl status mongod
```
