#!/bin/bash

#checks if in Linux and dumps error message into log if it is not
if [ "$(uname)" = "Linux" ]; then
	    echo "Operating system is Linux"
    else
	        echo "Error: Operating system is not Linux" >> linuxsetup.log
		    exit 1
fi
#makes .Trash direcotry if not there
mkdir -p ~/.TRASH
# checks if .vimrc exists and if it does changes name if not places error message in log
if [ -e ~/.vimrc ]; then
	    mv ~/.vimrc ~/.bup_vimrc
	        echo "The current .vimrc file was changed to '.bup vimrc'" >> linuxsetup.log
	else
		    echo ".vimrc file does not exist" >> linuxsetup.log
fi
# move to home director and overwrites vimrc contents into .vimrc
cd ~
if [ -f /etc/vimrc ]; then
	    cat /etc/vimrc > ~/.vimrc
    else
	        cat /usr/share/vim/vimrc > ~/.vimrc
fi
#appends the message below to the .bashrc file
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc

