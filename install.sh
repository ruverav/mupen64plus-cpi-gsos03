#!/bin/bash
cur_dir=$(pwd)
cd deb-packages
packages=(
    "mupen64plus-core"
    "mupen64plus-audio-sdl"
    "mupen64plus-input-sdl"
    "mupen64plus-ui-console"
    "mupen64plus-rsp-hle"
    # "mupen64plus-rsp-cxd4"
    "mupen64plus-rsp-z64"
    "mupen64plus-video-glide64mk2"
    "mupen64plus-video-arachnoid"
    "mupen64plus-video-rice"
    "mupen64plus-video-z64"
)

# Install deb packages in order
for pkgname in "${packages[@]}"
do
    sudo dpkg -i ${pkgname}_20190215-1_armhf.deb
done

# Install prepared config file (only if doesn't exist)
config_dir="/home/cpi/.config/mupen64plus"
if [ ! -d "$config_dir" ]
then
    mkdir -p $config_dir
    cp $cur_dir/config/mupen64plus.cfg $config_dir/
fi

# Install launcher menu entry inside "Retro Games"
cp -r $cur_dir/launcher /home/cpi/

# Create folder for N64 roms
mkdir -p /home/cpi/games/N64
