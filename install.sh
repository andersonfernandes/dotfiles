#!/bin/bash

echo "Installing vim-plug"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Installing oh my zsh"
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

echo "Linking config files"
ln -s ~/.dotfiles/.tmux.conf ~/
ln -s ~/.dotfiles/.config/nvim ~/.config/

nvim +PlugInstall +qall > /dev/null

echo "Done!"
