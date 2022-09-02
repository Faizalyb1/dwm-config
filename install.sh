#!/bin/bash

echo "This will set up DWM."
pacman -S --noconfirm ttf-font-awesome ttf-fira-code xorg xorg-xinit feh scrot gcr gtk3 gtk2 terminus-font ttf-jetbrains-mono ttf-nerd-fonts-symbols
sleep 2s
mv dwm ..
mv dmenu ..
mv slstatus ..
mv st ..
cd ../dwm && make clean install && cd ..
cd dmenu && make clean install && cd ..
cd slstatus && make clean install && cd ..
cd st && make clean install && cd ..

pacman -S nitrogen

# Sets up pipewire.
echo "Finally, we will be setting up pipewire for audio."
sleep 3s
pacman -S pipewire wireplumber pipewire-alsa pavucontrol --noconfirm
sleep 2s
clear

echo "What is your username"
read USERNAME

echo "exec dwm &
nitrogen --restore &
slstatus" > /home/$USERNAME/.profile

echo "DWM successfully installed!"
