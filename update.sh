#!/bin/bash

echo "Updating NeoVim plugins"
nvim +PlugInstall +PlugUpdate +qall > /dev/null

echo "Done!"
