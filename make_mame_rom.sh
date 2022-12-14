#!/bin/bash

if [ $# -ne 2 ]; then
    echo "usage: make_mame_rom.sh /path/to/rom_image.bin /path/to/mame/roms/"
    exit 1
fi

# manage arguments
rom_image=$1
destination_dir=${2%/}

cp -v $rom_image mk14194n
zip -v teammate.zip mk14194n
mv -v teammate.zip $destination_dir
rm mk14194n
