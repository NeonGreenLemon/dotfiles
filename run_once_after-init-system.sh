#!/usr/bin/env bash

## setup chrome
sudo cp ~/.config/personal/etc/chromium/policies/managed/chrome-extensions.json /etc/chromium/policies/managed/chrome-extensions.json

## load global mise
mise install

## generate locals
sudo locale-gen

## change theme of fcitx5
git clone https://github.com/catppuccin/fcitx5.git ~/fcitx5Theme
mkdir -p ~/.local/share/fcitx5/themes/
cp -r ~/fcitx5Theme/src/* ~/.local/share/fcitx5/themes
rm -rf ~/fcitx5Theme
