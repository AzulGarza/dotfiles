# dotfiles

This repository contains my personal dotfiles for Linux and macOS environments. These configurations are meant to set up various tools such as `conda`, `git`, `neovim`, `zsh`, and `tmux`, among others.

## Prerequisites

Before you begin, ensure you have the following installed on your system:
- `git`: For cloning the repository.
- `make`: For running the installation commands.

## Installation

To install these dotfiles, simply follow these steps:

### Clone the Repository

First, clone this repository to your local machine using:

```sh
git clone https://github.com/AzulGarza/dotfiles.git
cd dotfiles
```

### Run the Installer

Once the repository has been cloned, you can install the dotfiles by running:

```sh
make install
```

This command will automatically detect your operating system (Linux or macOS) and install the necessary dependencies if they are not already installed. It will also apply the configuration files appropriately.

## What's Included?

The installation will set up the following:

- `conda`: An open-source package management system and environment management system.
- `git`: A free and open-source distributed version control system.
- `neovim`: A hyperextensible Vim-based text editor.
- `zsh`: A shell designed for interactive use, although it is also a powerful scripting language.
- `tmux`: A terminal multiplexer, allowing multiple terminal sessions to be accessed simultaneously in a single window.

In addition to the above, the installer will also configure:

- Oh My Zsh: An open-source, community-driven framework for managing your Zsh configuration.
- Neovim configuration with `chad`: A modern `neovim` configuration with sane defaults.
- Symlinks for configurations: Automatically managed using `stow`.

## Customization

After installation, you may wish to customize the configurations to your liking. Configuration files can be found within their respective directories.

## Contribution

If you would like to contribute to these dotfiles or suggest improvements, feel free to open an issue or a pull request.

## License

This dotfiles repository is open-sourced software licensed under the [MIT license](LICENSE.md).

Happy Coding!
