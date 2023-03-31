# .dotfiles

Makefile:

	The Makefile automates the managing of the build or run process of the project determing rules and 
	dependencies of the scripts within. This project has two tagets being linux and clean. The linux 
	target has a dependency on the clean target meaning clean must be run first
		
	The clean target runs the 'cleanup.sh' script which is responsible for cleaning up temporary files or 
	directories that were created during the design process

	The linux target then crafts the project in a linux enviroment

	Use: make<target> to call the respective script

gitignore:
	Tells Git to ignore certain files or directors so they are not tracked or pushed to Github

vimrc:
	Turns syntax one, sets number, applies autoindent, sets ruler, changes color to elflord, and mkaes filtype
	to no expand tab, with shiftwidth of 8 and a soft tab stop to 0

linux.sh:
	Makes uses of if statement to ensure enviroment is linux and if it is not send an error message to the error 
	log.

	Then creates the .TRASH directory if it does not already exist

	Then checks if .vimrc file exists changes its name to .bup_vimrc and dumps a message to the linxsetup.log 
	stating that the current .vimrc name was change to .bup_vimrc

	Next overwrites the contents of vimrc to .vimrc

	lastly adds source tilday/.dotfiles/etc/bashrc custom to the end of the .bashrc file in home directory

cleanup.sh:
	revereses anything that was done in the linux.sh script and cleans the workspace

	first removes .vimrc file from home directory
	
	second uses sed to change the source line added by linux.sh at the end of the file to source
	tilday/.dotfiles/bashrc_custom

	lastly removes the .TRASH directory from home 

