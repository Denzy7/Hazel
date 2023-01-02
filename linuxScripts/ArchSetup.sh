#!/bin/bash

# For Arch

if ! [ $(id -u) -eq 0 ]
then
        echo "this script must run as root"
        exit 1
fi

set -e # Stop if an error is detected

aurdeps="spirv-cross"

echo -e "install the following dependencies using your aur helper:\n\t$aurdeps\n"
echo "once done press any key to continue"
read
pacman -Q spirv-cross
pacman -S mono vulkan-devel

echo "setup done. now run ./compile.sh"
