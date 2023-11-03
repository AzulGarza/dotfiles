#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Detect the OS using uname -s
OS=$(uname -s)

# Function to install Zsh
install_zsh() {
    echo "Installing Zsh..."
    if ! command_exists zsh; then
      if [ "$OS" = "Linux" ]; then
          sudo apt-get update && sudo apt-get install -y zsh
      elif [ "$OS" = "Darwin" ]; then
          brew install zsh
      fi
    else
      echo "Zsh is already installed"
    fi
}

# Function to install Oh My Zsh
install_oh_my_zsh() {
    if [ -d "$HOME/.oh-my-zsh" ]; then
      echo "Installing Oh My Zsh..."
      sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    else
      echo "Oh My Zsh is already installed"
    fi
}

# Function to install Conda
install_conda() {
    echo "Installing Conda..."
    if ! command_exists conda; then
      if [ "$OS" = "Linux" ]; then
          wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o ~/miniconda.sh
      elif [ "$OS" = "Darwin" ]; then
          wget https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -o ~/miniconda.sh
      fi
      bash ~/miniconda.sh -b -p $HOME/miniconda
      rm ~/miniconda.sh
    else
      echo "Conda is already installed"
    fi
}

# Function to install Git
install_git() {
    echo "Installing Git..."
    if ! command_exists git; then
      if [ "$OS" = "Linux" ]; then
          sudo apt-get update && sudo apt-get install -y git
      elif [ "$OS" = "Darwin" ]; then
          brew install git
      fi
    else
      echo "Git is already installed"
    fi
}

# Function to install NvChad
install_neovim_chad() {
    echo "Installing NvChad..."
    rm -r ~/nerd-fonts || true
    git clone https://github.com/ryanoasis/nerd-fonts ~/nerd-fonts --depth 1
    source ~/nerd-fonts/install.sh JetBrainsMono
    rm -r ~/.config/nvim.backup || true
    mkdir -p ~/.config/nvim.backup/
    mkdir -p ~/.config/nvim/
    mv ~/.config/nvim ~/.config/nvim.backup
    git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
}

# Function to install Neovim
install_neovim() {
    echo "Installing Neovim..."
    if ! command_exists nvim; then
      if [ "$OS" = "Linux" ]; then
          sudo apt-get update && sudo apt-get install -y neovim
      elif [ "$OS" = "Darwin" ]; then
          brew install neovim
      fi
    else
      echo "Neovim is already installed"
    fi
    echo "Installing NvChad..."
    install_neovim_chad
}

# Function to install Tmux
install_tmux() {
    echo "Installing Tmux..."
    if ! command_exists tmux; then
      if [ "$OS" = "Linux" ]; then
          sudo apt-get update && sudo apt-get install -y tmux
      elif [ "$OS" = "Darwin" ]; then
          brew install tmux
      fi
    else
      echo "Tmux is already installed"
    fi
}

install_brew() {
    echo "Installing Homebrew..."
    if ! command_exists brew; then
      if [ "$OS" = "Darwin" ]; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"      
      fi
    else
      echo "Homebrew is already installed"
    fi
}

install_stow() {
    echo "Installing Stow..."
    if ! command_exists stow; then
      if [ "$OS" = "Linux" ]; then
          sudo apt-get update && sudo apt-get install -y stow
      elif [ "$OS" = "Darwin" ]; then
          brew install stow
      fi
    else
      echo "Stow is already installed"
    fi
}

set_symlinks() {
    echo "Setting symlinks using stow..."
    stow .
}

main() {

  install_brew
  install_zsh
  install_oh_my_zsh
  install_conda
  install_git
  install_neovim
  install_tmux
  install_stow
  set_symlinks
  echo "All requested dependencies are installed."
  
}

main