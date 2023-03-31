#!/bin/bash
# removes .vimrc from the home director
if [ -e ~/.vimrc ]; then
	    rm ~/.vimrc
fi
# removes source line from bash file and replaces with nothing
sed -i '/source ~\/.dotfiles\/bashrc_custom/d' ~/.bashrc
#rmove .TRASH from home directory
if [ -d ~/.TRASH ]; then
	    rm -r ~/.TRASH
fi

