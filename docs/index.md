# Installtion Steps

Step 1: Perform System Update

```bash
apt update

sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common

sudo wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -

echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list

sudo apt-get update

sudo apt-get install -y mongodb-org

sudo systemctl start mongod
sudo systemctl enable mongod
sudo systemctl status mongod

```

```bash
sudo apt install wget curl gnupg2 software-properties-common apt-transport-https ca-certificates lsb-release
```

Step 2: Import the public key

```bash
curl -fsSL https://www.mongodb.org/static/pgp/server-6.0.asc|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/mongodb-6.gpg
```

Step 3: Configure MongoDB Repo

```bash
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu $(lsb_release -cs)/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
```

## installation for ubuntu 22.04

```bash
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.16_amd64.deb
sudo dpkg -i ./libssl1.1_1.1.1f-1ubuntu2.16_amd64.deb
sudo apt update
sudo apt install mongodb-org
```

## Starting System

```bash
sudo systemctl enable --now mongod
```
