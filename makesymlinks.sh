#!/bin/bash
dir=~/dotfiles
olddir=~/dotfiles_old
files="bashrc vimrc tmux.conf"


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

echo "i3"
mv ~/.config/i3 ~/dotfiles_old/i3
echo "Symlink i3"
ls -s $dir/i3 ~/.config/i3
