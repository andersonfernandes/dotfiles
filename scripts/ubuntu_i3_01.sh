#!/bin/bash
# Configuration for a clean Ubuntu 16.04 instalation with i3-wm.
# Run this script after run the script ubuntu_i3_00.sh
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

printf "RUN THIS SCRIPT ONLY AFTER RUN THE ubuntu_i3_00.sh SCRIPT.\n\n"
printf "Press [ENTER] to continue."
read

printf "\n\nInstalling Numix Theme\n\n"
sudo add-apt-repository --yes --force-yes ppa:numix/ppa
sudo apt-get update
sudo apt-get --yes --force-yes install numix-gtk-theme numix-icon-theme numix-icon-theme-circle
touch ~/.gtkrc-2.0.mine
echo 'gtk-theme-name="Numix"' >> ~/.gtkrc-2.0.mine
echo 'gtk-icon-theme-name="Numix-Circle"' >> ~/.gtkrc-2.0.mine

printf "\n\nInstalling Google Chrome\n\n"
cd /tmp/
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt -f install
cd

printf "\n\nInstalling multimedia applications\n\n"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get --yes --force-yes install spotify-client

sudo apt-get --yes --force-yes install rhythmbox
sudo apt-get --yes --force-yes install vlc

printf "\n\nNow everything is setup.\n"
printf "Restart the system and have fun! :D\n"
printf "Press [ENTER] to restart."
read

# sudo reboot

