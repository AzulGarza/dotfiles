OS := $(shell uname -s)

install_neovim:
	if [ $(OS) = "Darwin" ]; then \
		@echo "Installing neovim on macos"; \
		install_neovim_macos; \
	else \
		@echo "Installing neovim on linux"; \
		install_neovim_linux; \
	fi

install_neovim_macos:
	brew install gettext
	brew install ripgrep
	wget https://github.com/neovim/neovim/releases/latest/download/nvim-macos.tar.gz -O nvim-macos.tar.gz
	xattr -c ./nvim-macos.tar.gz
	tar xzvf nvim-macos.tar.gz
	./nvim-macos/bin/nvim

install_neovim_linux:
	wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz -O nvim-linux64.tar.gz
	tar xzvf nvim-linux64.tar.gz
	mv ./nvim-linux64/ ~/.local/share/nvim-linux64

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

remove_neovim_chad:
	rm -rf ~/.config/nvim
	rm -rf ~/.local/share/nvim
