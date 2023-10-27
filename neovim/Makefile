install_neovim_mac:
	#brew install libintl
	brew install gettext
	brew install ripgrep
	wget https://github.com/neovim/neovim/releases/latest/download/nvim-macos.tar.gz -O nvim-macos.tar.gz
	xattr -c ./nvim-macos.tar.gz
	tar xzvf nvim-macos.tar.gz
	./nvim-macos/bin/nvim

install_neovim_linux:
	wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz -O nvim-linux64.tar.gz
	tar xzvf nvim-linux64.tar.gz
	./nvim-linux64/bin/nvim

install_nerd_font:	
	rm -r ~/nerd-fonts || true
	git clone https://github.com/ryanoasis/nerd-fonts ~/nerd-fonts --depth 1
	chown -R $(SUDO_USER):$(SUDO_GID) ~/nerd-fonts/
	cd ~/nerd-fonts/ && ./install.sh JetBrainsMono

install_neovim_chad:	
	rm -r ~/.config/nvim.backup || true
	mkdir -p ~/.config/nvim.backup/
	mkdir -p ~/.config/nvim/
	mv ~/.config/nvim ~/.config/nvim.backup
	git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
	chown -R $(SUDO_USER):$(SUDO_GID) ~/.config/nvim/

remove_neovim:
	rm -rf ~/.config/nvim
	rm -rf ~/.local/share/nvim

install_azul_plugins:
	rm -rf ./tmp/ || true
	mkdir -p ./tmp/
	git clone https://github.com/AzulGarza/dotfiles/ ./tmp/
	rm -rf ~/.config/nvim/lua/custom
	mv ./tmp/neovim/custom/ ~/.config/nvim/lua/custom/
	chown -R $(SUDO_USER):$(SUDO_GID) ~/.config/nvim/lua/custom
	rm -r ./tmp/
