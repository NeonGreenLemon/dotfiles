#!/usr/bin/env bash


## install normal packages
sudo pacman -S --needed --noconfirm extra/tmux
sudo pacman -S --needed --noconfirm extra/httpie
sudo pacman -S --needed --noconfirm extra/maven
sudo pacman -S --needed --noconfirm extra/krita
sudo pacman -S --needed --noconfirm extra/keepassxc

## install AUR packages
yay -S --needed --noconfirm tmux-plugin-manager
yay -S --needed --noconfirm bitwig-studio
yay -S --needed --noconfirm cyberghostvpn
