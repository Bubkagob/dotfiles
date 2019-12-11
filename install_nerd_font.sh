#!/bin/bash
mkdir -p ~/.local/share/fonts
if type curl || grep "not found"; then
    echo found
else
    echo not found
    sudo apt-get install curl
fi
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
fc-cache -f -v
