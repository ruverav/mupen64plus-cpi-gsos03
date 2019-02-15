#!/bin/bash
cd deb-packages
packages=(
    "mupen64plus-video-z64"
    "mupen64plus-video-rice"
    "mupen64plus-video-arachnoid"
    "mupen64plus-video-glide64mk2"
    "mupen64plus-rsp-z64"
    # "mupen64plus-rsp-cxd4"
    "mupen64plus-rsp-hle"
    "mupen64plus-ui-console"
    "mupen64plus-input-sdl"
    "mupen64plus-audio-sdl"
    "mupen64plus-core"
)

# Uninstall deb packages
for pkgname in "${packages[@]}"
do
    sudo dpkg -r ${pkgname}
done

rm -r /home/cpi/launcher/Menu/GameShell/20_Retro\ Games/N64
