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
sudo apt-get --yes --force-yes upgrade
sudo apt-get --yes --force-yes install build-essential

printf "\n\nInstalling i3-wm\n\n"
sudo apt-get --yes --force-yes install i3 i3-wm

printf "\n\nInstalling lightdm and graphical interface utils\n\n"
sudo apt-get --yes --force-yes install lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings x11-utils x11-xserver-utils xauth

printf "\n\nInstalling first applications\n\n"
sudo apt-get --yes --force-yes install thunar gnome-terminal pm-utils compton lxappearance feh rofi conky zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sudo chsh -s $(which zsh)

printf "\n\nThat's it. All the basic things are installed!\n"
printf "Restart the system and execute the next script to finish the instalation.\n"
printf "Press [ENTER] to restart."
read

sudo reboot
