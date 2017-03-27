#!/bin/bash
# Configuration for a clean Ubuntu 16.04 instalation with i3-wm.
# Run this script after install the Ubuntu Server 16.04
# Author: Anderson Fernandes <https://github.com/andersonfernandes>

if [[ $UID != 0 ]]; then
  echo "Please run this script with sudo:"
  echo "sudo $0 $*"
  exit 1
fi


printf "\n\n"
echo 'm    m #                      m                  mmmmm   mmmm'
echo '#    # #mmm   m   m  m mm   mm#mm  m   m           #    "   "#'
echo '#    # #" "#  #   #  #"  #    #    #   #           #      mmm""'
echo '#    # #   #  #   #  #   #    #    #   #           #        "#'
echo '"mmmm" ##m#"  "mm"#  #   #    "mm  "mm"#         mm#mm  "mmm#"'
printf "\n\n"

printf "Updating the System . . .\n\n"
sudo apt-get update 
sudo apt-get --yes upgrade
sudo apt-get --yes install build-essential

printf "\n\nInstalling graphical interface\n"
sudo apt-get --yes install i3 i3-wm lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings x11-utils x11-xserver-utils xauth

printf "\n\nAnd some applications\n"
sudo apt-get --yes install thunar gnome-terminal pm-utils compton lxappearance feh rofi playerctl networkmanager zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sudo chsh -s $(which zsh) && exit

sudo apt-get --yes install git cmake cmake-data libfontconfig1-dev libfreetype6-dev libghc-x11-xft-dev libx11-xcb-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libasound2-dev libmpdclient-dev libiw-dev
cd /tmp/
git clone --branch 2.4.6 --recursive https://github.com/jaagr/polybar
mkdir polybar/build
cd polybar/build
cmake -DCMAKE_BUILD_TYPE=Release ..
sudo make install
make userconfig
cd

printf "\n\nAll the basic things are installed!\n"
printf "Restart the system, follow the steps to setup i3 and execute the next script(ubuntu_i3_01.sh) to finish the instalation.\n"
printf "Press [ENTER] to restart."
read

sudo reboot
