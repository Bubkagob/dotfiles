#!/bin/bash
dir=~/dotfiles
olddir=~/dotfiles_old
files="config/nvim/init.vim i3/config bashrc vimrc tmux.conf"


echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"


echo -n "Changing to the $dir directory ..." 
cd $dir
echo "done"


for file in $files; do
	echo "Moving"
	mv ~/.$file ~/dotfiles_old/
	echo "Symlinking"
	ln -s $dir/$file ~/.$file
done
