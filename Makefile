MAKEFLAGS += --silent

install:
	mkdir -p ~/.scripts/
	@echo "Installing dependencies"
	sudo apt install tmux python3 exuberant-ctags zsh git curl silversearcher-ag neovim fonts-powerline
	@echo "Linking config files"
	ln -sfn ~/.dotfiles/tmux.conf ~/.tmux.conf
	ln -sfn ~/.dotfiles/config/nvim ~/.config/
	ln -sfn ~/.dotfiles/scripts/setup_rvm.sh ~/.scripts/setup_rvm.sh
	echo '\n#RVM on tmux fix\n[ -f ~/.scripts/setup_rvm.sh ] && source ~/.scripts/setup_rvm.sh' >> ~/.zshrc
	@echo "Installing packer.nvim"
	git clone --depth 1 https://github.com/wbthomason/packer.nvim\
	 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
	@echo "Installing NeoVim plugins"
	nvim +PackerSync +qa
	cd ~/.fzf/ && ./install
	@echo "Done!"

nvim_update:
	@echo "Creating a backup of the current plugins versions"
	nvim +'PackerSnapshot plugins.bkp' +qal > /dev/null
	@echo "Updating plugins"
	nvim +PackerSync +qa
	@echo "\nRun 'make nvim_plugins_rollback' to reinstall the previous plugins versions"
	@echo "Done!\n"

nvim_plugins_rollback:
	@echo "Rolling back the plugins versions"
	nvim +'PackerSnapshotRollback plugins.bkp' +qal
	@echo "Rollback finished with success!\n"
	
