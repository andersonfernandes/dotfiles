#!/bin/bash

echo "Updating NeoVim plugins"
nvim +PlugInstall +qall > /dev/null

echo "Done!"
