MAKEFLAGS += --silent

install:
	mkdir -p ~/.scripts/
	@echo "Installing dependencies"
	sudo apt install tmux python3 ctags zsh git curl silversearcher-ag neovim
	@echo "Linking config files"
	ln -sfn ~/.dotfiles/tmux.conf ~/.tmux.conf
	ln -sfn ~/.dotfiles/config/nvim ~/.config/
	ln -sfn ~/.dotfiles/scripts/setup_rvm.sh ~/.scripts/setup_rvm.sh
	echo '\n#RVM on tmux fix\n[ -f ~/.scripts/setup_rvm.sh ] && source ~/.scripts/setup_rvm.sh' >> ~/.zshrc
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
	
