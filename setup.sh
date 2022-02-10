#!/bin/bash

#Author: Giuseppe Marcello Guarino
#Creation Date: 10.02.2020
#Licence: GPL-3

#This is a setup script to install nvim and load all the necessary dependencies and configuarions


echo "Adding repository to apt"
echo
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update 
sudo apt -y upgrade
echo "###############################################################"
echo Installing essential tools
echo "###############################################################"


sudo apt install build-essential python3-dev python3-pip
echo "###############################################################"
echo Installing nvim
echo "###############################################################"
echo
sudo apt install neovim

echo "###############################################################"
echo Installing vim-plug
echo "###############################################################"
echo

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "###############################################################"
echo Installing python dependencies
echo "###############################################################"
echo

pip3 install -r requirements.txt

echo "###############################################################"
echo Making Directory for init.vim
echo "###############################################################"
echo

mkdir -p $HOME/.config/nvim
cp ./init.vim $HOME/.config/nvim

echo "###############################################################"
echo Installing plugins
echo "###############################################################"
echo


nvim --headless +PlugInstall +qall

