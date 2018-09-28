#!/bin/bash

echo "Nous allons désormais  procéder à l'installation des différents paquets dont vous aurez besoin pour vous lancer dans un projet simple contenant de l'html, du css et du js."

sudo apt update
sudo apt install apache2 -y

echo "Choisissez à présent un nom d'utilisateur"
read username
echo "Pour votre sécurité, nous vous prions de choisir un mot de passe"
read password

 sudo useradd -m $username -p $password
