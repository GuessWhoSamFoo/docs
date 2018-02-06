#!/bin/bash

echo "Installing Hugo 0.36"
wget https://github.com/gohugoio/hugo/releases/download/v0.36/hugo_0.36_Linux-64bit.deb
sudo dpkg -i hugo*.deb
hugo version

echo "Setting up local development server"
hugo server &
sleep 7
