#!/bin/bash

# Redirect all output to a log file
exec > /home/ubuntu/setup.log 2>&1

# Update system and install essentials
apt update -y
apt install wget git unzip -y

# Install Java 21
mkdir -p /usr/lib/jvm
cd /usr/lib/jvm
wget -q https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.tar.gz
tar -xzf jdk-21_linux-x64_bin.tar.gz
JDK_DIR=$(tar -tf jdk-21_linux-x64_bin.tar.gz | head -1 | cut -f1 -d"/")
update-alternatives --install /usr/bin/java java /usr/lib/jvm/$JDK_DIR/bin/java 1
update-alternatives --set java /usr/lib/jvm/$JDK_DIR/bin/java

# Install Maven
apt install maven -y

# Clone app repo
cd /home/ubuntu
git clone https://github.com/techeazy-consulting/techeazy-devops.git
cd techeazy-devops

# Build app
mvn clean package

# Run app on port 80
nohup java -jar target/techeazy-devops-0.0.1-SNAPSHOT.jar --server.port=80 > app.log 2>&1 &

sudo shutdown -h +30