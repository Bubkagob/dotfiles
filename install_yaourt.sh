#!/bin/sh

# 1. get package-query
git clone https://aur.archlinux.org/package-query.git
cd package-query/
makepkg -si
cd ..

# 2. get yaourt
git clone https://aur.archlinux.org/yaourt.git
cd yaourt/
makepkg -si
cd ..
sudo rm -dR yaourt/ package-query/
