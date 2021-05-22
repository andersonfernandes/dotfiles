MAKEFLAGS += --silent

install:
	@echo "Linking config files"
	ln -sfn ~/.dotfiles/tmux.conf ~/.tmux.conf
	ln -sfn ~/.dotfiles/config/nvim ~/.config/
	@echo "Installing vim-plug"
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	@echo "Installing NeoVim plugins"
	nvim +'PlugInstall --sync' +qa
	cd ~/.fzf/ && ./install
	@echo "Done!"

nvim_update:
	@echo "Creating a backup of the current plugins versions"
	nvim +'PlugSnapshot! plugins.bkp' +qal > /dev/null
	@echo "Updating plugins"
	nvim +'PlugInstall --sync' +PlugUpdate +qall
	@echo "\nRun 'make nvim_plugins_rollback' to reinstall the previous plugins versions"
	@echo "Done!\n"

nvim_plugins_rollback:
	@echo "Rolling back the plugins versions"
	nvim +'source plugins.bkp' +qal
	@echo "Rollback finished with success!\n"
	
