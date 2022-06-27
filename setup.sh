#!/bin/bash

# Install deps
sudo apt update

sudo apt install -y can-utils \
    autoconf \
    libtool \
    python3 \
    python3-pip

sudo pip3 install wheel
