# Zsh Configuration and macOS Setup

This repository contains a custom mac Zsh setup for my usecases. It includes theming, useful CLI tools, and an advanced tiling window manager.

## Features (& To Installs)

- **Powerlevel10k** Zsh theme with autosuggestions & syntax highlighting
- **eza** for modern file listings
- **zoxide** for smart directory navigation
- **yazi** terminal file manager
- **WezTerm** terminal emulator
- **Aerospace** tiling window manager for macOS
- **aerospace-swipe** for gesture-based workspace navigation
- **SketchyBar** for a minimal, customizable status bar
- **Raycast** as a Spotlight replacement
- **GitHub CLI (gh)** for terminal GitHub interactions

---

## Installation

### 1. Prerequisites

Install [Homebrew](https://brew.sh/):

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2. Terminal Setup

```# Zsh + Enhancements
brew install zsh
brew install romkatv/powerlevel10k/powerlevel10k
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
brew install eza
brew install zoxide
brew install yazi

# Move .zshrc and .p10k.zsh
cp ~/.config/zshrc/.zshrc ~/.zshrc
cp ~/.config/zshrc/.p10k.zsh ~/.p10k.zsh
```

⸻

### 3. Terminal Emulator: WezTerm

```brew install --cask wezterm```

Set as default terminal for best font + theme rendering.

⸻

### 4. Others

- **Raycast** as a Spotlight replacement
- **Beeper** as a messaging replacement
- **ChatGPT Desktop** as a desktop assistant
- **Arc** as a browser replacement
- **GitHub CLI (gh)** for terminal GitHub interactions
- **VSCode** as a code editor of choice
- **JetBrains Mono** as font of choice
