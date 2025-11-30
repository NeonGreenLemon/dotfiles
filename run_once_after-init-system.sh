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

## install yazi theme
flavor=mocha
color=blue
yazi_theme_dir=~/.config/yazi
tmTheme_file=catppuccin-${flavor}.tmTheme

mkdir -p ${yazi_theme_dir}

pushd ${yazi_theme_dir}

curl -O -J -L https://raw.githubusercontent.com/catppuccin/yazi/refs/heads/main/themes/${flavor}/catppuccin-${flavor}-${color}.toml
mv catppuccin-${flavor}-${color}.toml theme.toml
sed -i "s|^\(syntect_theme = \"\).*|\1${yazi_theme_dir}/${tmTheme_file}\"|" theme.toml

# themed syntax highlighting
curl -o ./${tmTheme_file} https://raw.githubusercontent.com/catppuccin/bat/refs/heads/main/themes/Catppuccin%20${flavor^}.tmTheme

popd
