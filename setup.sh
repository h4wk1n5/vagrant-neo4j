#!/bin/bash

echo
echo "Installing Java..."
#cd /usr/local
#wget -nv -O jre-7u45-linux-x64.gz http://javadl.sun.com/webapps/download/AutoDL?BundleId=81812
#tar -xf jre-7u45-linux-x64.gz
#rm jre-7u45-linux-x64.gz
#ln -s /usr/local/jre1.7.0_45/bin/java /usr/bin/java
apt-get install default-jre default-jre-headless -y


echo
echo "Installing Neo4j..."
cd /etc
wget --no-check-certificate -O - https://debian.neo4j.org/neotechnology.gpg.key | apt-key add -
echo 'deb http://debian.neo4j.org/repo stable/' >/etc/apt/sources.list.d/neo4j.list
apt-get update
apt-get install neo4j -y
#wget -nv http://dist.neo4j.org/neo4j-community-2.2.5-unix.tar.gz
#tar -xf neo4j-community-2.2.5-unix.tar.gz
#rm neo4j-community-2.2.5-unix.tar.gz
#ln -s /etc/neo4j-community-2.2.5/bin/neo4j /usr/bin/neo4j

#echo
#echo "Updating Neo4j Config..."
sed -i 's/#dbms\.connectors\.default_listen_address=0\.0\.0\.0/dbms.connectors.default_listen_address=0.0.0.0:7687/' /etc/neo4j/neo4j.conf

echo
echo "Starting Neo4j..."
ulimit -n 40000
service neo4j start
