#!/bin/bash
DIR="$(cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"
cd "$DIR"
rm -r minecraft-installer
mkdir minecraft-installer
cd minecraft-installer
# Download target for specification file of minecraft-launcher
echo Downloading specification file...
sleep 1s
wget https://github.com/DarkWav/Specfile-Cloud/raw/master/minecraft-launcher.spec
clear
echo "########################################################################################################"
echo Welcome to my Minecraft installer for openSUSE and Fedora
echo .
echo Credits:
echo Mojang - for Minecraft,
echo RedHat - for RPMBuild,
echo Arch Linux - for build system,
echo DarkWav - for installer script.
echo .
echo If you whish to build a minecraft-launcher rpm package, press any key
read -n1 -r -p "########################################################################################################" key
clear
echo Starting Build...
sleep 2s
arch=x86_64
rm -r $PWD/pkg
mkdir -p $PWD/pkg
rm -r $PWD/src
mkdir -p $PWD/src
rm -r $PWD/${arch}
rpmfile=$(find . -name *.rpm)
rm rpmfile ${rpmfile}
buildrt=$PWD/pkg
specfile=$(find . -name *.spec)
rpmbuild --target ${arch} -bb ${specfile} --buildroot ${buildrt}
cd ./${arch}
rpmfile=$(find . -name *.rpm)
cp ./${rpmfile} ../${rpmfile}
rm -r ../${arch}
cd ../
rpmfile=$(find . -name *.rpm)
clear
echo "########################################################################################################"
echo ${rpmfile} has been built successfully.
echo If you whish to install ${rpmfile} or update your current installation,
echo press any key and enter your password
read -n1 -r -p "########################################################################################################" key
sudo clear
echo Installing...
sleep 2s
sudo rpm -e minecraft-launcher
clear
sudo rpm -ivh ${rpmfile}
echo Finished.
