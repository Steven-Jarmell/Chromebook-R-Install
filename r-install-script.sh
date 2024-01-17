#!/bin/bash

# Tutorial: https://levente.littvay.hu/chromebook/

clear
echo "Upgrading Linux Packages"
sleep 2

sudo apt-get update && sudo apt-get upgrade -y

#########################################################

clear
echo "Installing R Dependencies"
sleep 3

sudo apt-get install dirmngr gnupg apt-utils apt-transport-https ca-certificates software-properties-common

#########################################################

clear
echo "Authenticate Ubuntu Server"
sleep 3

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key '95C0FAF38DB3CCAD0C080A7BDC78B2DDEABC47B7'

#########################################################

clear
echo "Add R Server to List for apt-get update/upgrade"
sleep 3

sudo add-apt-repository 'deb http://cloud.r-project.org/bin/linux/debian bullseye-cran40/'

#########################################################

clear
echo "Update Linux Packages Again"
sleep 3

sudo apt-get update && sudo apt-get upgrade -y

#########################################################

clear
echo "Install R"
sleep 3

sudo apt-get install r-base r-base-dev libclang-dev libpq5 libnss3

#########################################################

clear
echo "Install RStudio"
sleep 3

curl -o rstudio.deb https://download1.rstudio.org/electron/bionic/amd64/rstudio-2022.12.0-353-amd64.deb
sudo dpkg -i rstudio.deb

#########################################################

clear
echo "Add Symlink from Linux to Downloads Folder"
sleep 3

ln -s /mnt/chromeos/MyFiles/Downloads/ Downloads

#########################################################

clear
echo "All Done :D"