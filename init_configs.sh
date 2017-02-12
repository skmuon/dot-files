#!/bin/bash

# Assumes there are no configuration files in home directory

FILES="
	.bashrc
	.bash_alias
	.bash_profile
	.tmux.conf
	.gitconfig
	.zshrc
	"

for f in $FILES
do
	echo $f
	if [ -f $f ]; then
		echo "Installing $f in home directory"
		ln -s -f $f ~/.
	else
		echo "Unable to find $f in current directory"
	fi
done
