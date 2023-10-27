# Setup neovim environment


## Instructions

1. Install neovim depending on your OS

```bash
make install_neovim_[mac, linux]
```

2. Install nerd fonts:

```bash
make install_nerd_font
```

Be sure to change the font of your terminal
If you're using [iTerm2](https://iterm2.com/) as I do, check [this thread](https://stackoverflow.com/questions/72184554/how-to-fix-nvchad-not-displaying-icons).


3. Install neovim chad

```bash
sudo make install_neovim_chad 
```

Start using `neovim` using `nvim`.

4. Install python highglighting

```bash
neovim
:TSInstall python
:TSInstallInfo # check available
```

5. Install 

```bash
sudo make install_azul_plugins
neovim
:MasonInstallAll
:TSInstall python
```

Sources

1. [neovim-python](https://github.com/dreamsofcode-io/neovim-python)
2. [ChatGPT.nvim](https://github.com/jackMort/ChatGPT.nvim)
3. [codeium.vim](https://github.com/Exafunction/codeium.vim)

