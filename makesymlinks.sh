#!/bin/bash

# sudo pacman -S --noconfirm vim tmux gxkb
# git submodule init
# git submodule update --recursive

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
mv ~/.config/i3 $olddir/i3
echo "Symlink i3"
ln -s $dir/i3 ~/.config/i3

echo "vim"
mv ~/.vim $olddir/vim
echo "Symlinking vim"
ln -s $dir/vim ~/.vim

echo "gxkb"
mv ~/.config/gxkb/gxkb.cfg $olddir
echo "Symlink gxkb"
ln -s $dir/gxkb.cfg ~/.config/gxkb/gxkb.cfg

echo "termite"
mv ~/.config/termite $olddir/termite
echo "Link Termite"
ln -s $dir/termite ~/.config/termite
