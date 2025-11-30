#!/usr/bin/env bash

## setup chrome
sudo cp ~/.config/personal/etc/chromium/policies/managed/chrome-extensions.json /etc/chromium/policies/managed/chrome-extensions.json

## load global mise
mise install

## generate locals
sudo locale-gen

