#!/bin/bash


mkdir -p ~/.TRASH #Creates directory .TRASH in home directory
if [ $(uname) == "Linux" ]; then #Checks if uname equals Linux
	echo "Operating system is Linux." >> linuxsetup.log
else
	echo "ERROR: Operating system is not Linux." >> linuxsetup.log #Error message for incorrect operating systems
	exit 1
fi #Ends if-else statement

if [ -f ~/.vimrc ]; then #Checks if .vimrc already exists
	mv ~/.vimrc ~/.bup_vimrc #renames .vimrc
        echo "Current .vimrc changed to .bup_vimrc" >> linuxsetup.log #Echos message to command log
fi
cp etc/.vimrc ~/.vimrc #Copies the files to .vimrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc #Prints message to .bashrc

