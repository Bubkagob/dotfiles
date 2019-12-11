#!/bin/bash
wget https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip
mkdir -p ~/.local/share/fonts/Hack
unzip -q Hack-v4.003-ttf.zip -d ~/.local/share/fonts/HackAjlk
fc-cache -f -v
rm *.zip*
