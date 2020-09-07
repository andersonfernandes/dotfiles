#!/bin/bash

echo "Linking config files"
ln -sfn ~/.dotfiles/.tmux.conf ~/
ln -sfn ~/.dotfiles/.config/nvim ~/.config/

echo "Installing vim-plug"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Installing NeoVim plugins"
nvim +'PlugInstall --sync' +qa

cd ~/.fzf/ && ./install

echo "Done!"
