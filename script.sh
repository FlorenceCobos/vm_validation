#!/bin/bash

echo "Bonjour, nous allons configurer ensemble une machine virtuelle!"
mkdir mamachinevirtuelle
cd mamachinevirtuelle
touch Vagrantfile

echo "# -*- mode: ruby -*-" >> Vagrantfile
echo "# vi: set ft=ruby :" >> Vagrantfile

echo "Vagrant.configure('2') do |config|" >> Vagrantfile
echo "config.vm.box = 'ubuntu/xenial64'" >> Vagrantfile

echo " A présent, choisissez une IP pour votre serveur !"
read votreadresseip
echo "config.vm.network 'private_network', ip: '$votreadresseip'" >> Vagrantfile
echo "Choisissez un nom pour votre dossier affilié"
read nomdudossier
echo "config.vm.synced_folder './$nomdudossier', '/var/www/html'" >> Vagrantfile

echo "end" >> Vagrantfile

mkdir $nomdudossier

vagrant up
vagrant ssh
