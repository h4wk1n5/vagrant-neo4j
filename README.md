# Vagrant Neo4j

A [vagrant](http://vagrantup.com) configuration to run Neo4j in a VirtualBox.

The setup script is a simple bash shell script (no chef/puppet/etc). I wanted a simple, lightweight, and standalone script to build my environment, but it may not be appropriate for everyone's needs.

## Installs

Running `vagrant up` will download and install:

* Ubuntu 16.04 LTS (Base Box) 

* [OpenJDK Java](http://www.openjdk.java.net/) JRE 


* [Neo4j](http://www.neo4j.org/)  `3.1.0`
> (A)GPLv3 License<br>
> Port 7474, 7687  is forwarded from the host to the guest for accessing Neo4j from the host machine.

## Requirements

* [VirtualBox](https://www.virtualbox.org/) (version 4.2 or later)
* [Vagrant](http://www.vagrantup.com/)

## npm

If you would prefer to install using npm:

```
npm install vagrant-neo4j
```

The above [requirements](#requirements) still must be installed separately. 

`npm start` and `npm stop` are aliases of `vagrant up` and `vagrant destroy -f` respectively. Though, this is true whether installed via npm or not.

## Windows 8.1

If you are using Windows 8.1, make sure to you are using [VirtualBox 4.3.2](https://www.virtualbox.org/wiki/Downloads) or later. There were compatibility problems in older versions which caused BSOD.
