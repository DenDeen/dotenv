# Zsh Configuration

This repository contains a custom Zsh setup using the Powerlevel10k theme, syntax highlighting, autosuggestions, enhanced `ls` output, and tools like Zoxide and Yazi for efficient terminal navigation.

## Features

- [Powerlevel10k](https://github.com/romkatv/powerlevel10k) theme
- Syntax highlighting
- Autosuggestions
- Enhanced `ls` with [eza](https://github.com/eza-community/eza)
- Fast directory jumping with [zoxide](https://github.com/ajeetdsouza/zoxide)
- File manager integration with [Yazi](https://github.com/sxyazi/yazi)
- Conda integration for managing environments
- Persistent and shareable history

## Installation

### 1. Prerequisites

Ensure you have the following installed:

- **Zsh**: `brew install zsh`
- **Homebrew**: [Install Homebrew](https://brew.sh/)
- **Oh My Zsh (optional)**: `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

### 2. Install Required Tools

```sh
# Powerlevel10k
brew install romkatv/powerlevel10k/powerlevel10k

# Zsh plugins
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

# eza (modern replacement for ls)
brew install eza

# zoxide (jump around directories)
brew install zoxide

# yazi (terminal file manager)
brew install yazi
