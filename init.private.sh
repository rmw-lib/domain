
#!/usr/bin/env bash

CONFIG_DIR=~/.config/rmw
mkdir -p $CONFIG_DIR
cd $CONFIG_DIR

rm -rf domain-sign

git clone git@github.com:gcxfd/domain-sign.git

