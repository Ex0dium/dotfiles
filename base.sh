#!/bin/sh

# Base packages install script
# This is designed to be used with a fresh manjaro kde install
# It will install all the needed software to get a complete & preconfigured i3gaps + polybar with all my favourite apps

echo
# System Upgrade
sudo pacman -Syyu
sudo pacman -S yay

# i3 base
sudo pacman -S i3-gaps i3blocks i3lock dmenu rofi vim feh dunst rxvt-unicode picom conky-lua-nv xdotool playerctl pamixer polybar nerd-fonts-noto-sans-mono nerd-fonts-terminus lxrandr

sudo pacman -S thunderbird akregator discord steam lutris wine lollypop firefox kdeconnect mpv youtube-dl handbrake gimp krita kdenlive musescore atom pandoc lxappearance arc-icon-theme ark-gtk-theme kcharselect

# aur stuff
yay -S --sudoloop aseprite
yay -S --sudoloop sh-elf-gcc-casio sh-elf-binutils-casio mkg3a p7 fxsdk-git git-devel-git
yay -S --sudoloop svp
yay -S --sudoloop betterdiscordctl-git
