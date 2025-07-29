#!/bin/bash

set -x

if [ ! -f ".config" ]; then
    make nanopc-t1_defconfig
fi

make -j32 all

make -j32 dtbs modules uImage LOADADDR=0x40008000


