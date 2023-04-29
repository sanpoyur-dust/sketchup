#!/bin/sh

cat apt-packages.txt | xargs -I {} sh -c "sudo apt install -y {}"
