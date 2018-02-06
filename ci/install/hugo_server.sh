#!/bin/bash

echo "Installing Hugo 0.36"
wget https://github.com/gohugoio/hugo/releases/download/v0.36/hugo_0.36_Linux-64bit.deb
sleep 3
sudo dpkg -i hugo*.deb
hugo version

# Allow Hugo to start when running CI
echo "Setting up local development server"
hugo server &
sleep 7
