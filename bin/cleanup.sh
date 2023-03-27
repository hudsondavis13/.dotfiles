#!/bin/bash

rm ~/.vimrc #Removes .vimrc directory from the home directory
sed '/source ~/.dotfiles/bashrc_custom/d' ~/.bashrc #Removes line from .bashrc directory
rm ~/.TRASH #removes .TRASH directory from home directory
