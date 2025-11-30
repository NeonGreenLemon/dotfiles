#!/usr/bin/env bash


## install normal packages
sudo pacman -S --needed --noconfirm extra/tmux
sudo pacman -S --needed --noconfirm extra/httpie
sudo pacman -S --needed --noconfirm extra/maven
sudo pacman -S --needed --noconfirm extra/krita
sudo pacman -S --needed --noconfirm extra/keepassxc
sudo pacman -S --needed --noconfirm extra/yazi

## install AUR packages
yay -S --needed --noconfirm tmux-plugin-manager
yay -S --needed --noconfirm bitwig-studio
yay -S --needed --noconfirm cyberghostvpn

## Language Support
sudo pacman -S --needed --noconfirm fcitx5-im
sudo pacman -S --needed --noconfirm ttf-jigmo
sudo pacman -S --needed --noconfirm fcitx5-mozc-ut
