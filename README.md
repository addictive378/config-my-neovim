# My Neovim Configuration

Personal Neovim configuration based on [NvChad](https://nvchad.com/).

This repository contains my personal Neovim configuration, including plugins, keymaps, options, and other customizations.

> **Note:** This configuration uses **NvChad v2.5** and automatically installs NvChad when Neovim starts for the first time. You do **not** need to install NvChad separately.

---
## Preview

<img width="1269" height="730" alt="image" src="https://github.com/user-attachments/assets/c26f7f97-ae2b-4fa4-bc9f-7ed7015a45ab" />

<img width="1219" height="758" alt="image" src="https://github.com/user-attachments/assets/d39b3d7d-2f14-447c-98e3-ce8a22be5fd8" />

## Requirements

This configuration is primarily developed and tested on **Arch Linux**.

Before installing this configuration, make sure the following dependencies are installed:

- Git
- Neovim
- Tree-sitter CLI
- GCC
- Make
- Ripgrep
- A Nerd Font

---

## Installation

The following guide assumes a fresh **Arch Linux** installation with no existing Neovim configuration.

### 1. Install Git

Git is required to clone this repository and to download Neovim plugins.

Install Git:

```bash
sudo pacman -S git
```

Check the installation:

```bash
git --version
```

---

### 2. Install Neovim

Install Neovim:

```bash
sudo pacman -S neovim
```

Check the installed version:

```bash
nvim --version
```

Make sure your Neovim version satisfies the requirements of the NvChad version used by this configuration.

---

### 3. Install Tree-sitter CLI

Tree-sitter CLI is required by `nvim-treesitter` to install and compile language parsers.

Install it on Arch Linux:

```bash
sudo pacman -S tree-sitter-cli
```

Check the installation:

```bash
tree-sitter --version
```

---

### 4. Install GCC and Make

GCC and Make are used by various Neovim plugins and tools that require compilation.

Install them:

```bash
sudo pacman -S gcc make
```

Check the installation:

```bash
gcc --version
make --version
```

---

### 5. Install Ripgrep

Ripgrep is used by Telescope for fast text searching.

Install it:

```bash
sudo pacman -S ripgrep
```

Check the installation:

```bash
rg --version
```

> Ripgrep is optional for Telescope, but it is recommended for a better searching experience.

---

### 6. Install a Nerd Font

This configuration uses icons provided by Nerd Fonts.

Install JetBrains Mono Nerd Font on Arch Linux:

```bash
sudo pacman -S ttf-jetbrains-mono-nerd
```

After installing the font, configure your terminal to use:

```text
JetBrainsMono Nerd Font
```

> **Important:** Use `JetBrainsMono Nerd Font`, not `JetBrainsMono Nerd Font Mono`. The `Mono` variant may make icons appear smaller.

---

## 7. Check Your Existing Neovim Configuration

Before cloning this configuration, check whether the Neovim configuration directory already exists:

```bash
ls ~/.config/nvim
```

If you already have a Neovim configuration that you want to keep, create a backup:

```bash
mv ~/.config/nvim ~/.config/nvim.backup
```

This allows you to restore your previous configuration later if needed.

If you do not have an existing configuration, continue to the next step.

---

## 8. Clone This Repository

Clone this repository directly into the Neovim configuration directory:

```bash
git clone https://github.com/addictive378/config-my-neovim.git ~/.config/nvim
```

The configuration should now be located at:

```text
~/.config/nvim
```

You can verify it with:

```bash
ls ~/.config/nvim
```

You should see files such as:

```text
init.lua
lua/
lazy-lock.json
.stylua.toml
```

---

## 9. Start Neovim

Start Neovim:

```bash
nvim
```

On the first launch, this configuration will automatically bootstrap its dependencies.

The `init.lua` file automatically installs `lazy.nvim` if it is not already installed.

After that, `lazy.nvim` loads:

- NvChad v2.5
- NvChad's default plugins
- Plugins defined in this configuration
- Custom options
- Custom keymaps
- Custom autocommands

You do **not** need to manually install NvChad.

---

## 10. Restart Neovim

After the initial plugin installation is complete, close Neovim:

```text
:q
```

Then start it again:

```bash
nvim
```

The configuration should now be ready to use.

---

# How This Configuration Works

The configuration uses `lazy.nvim` as its plugin manager.

When Neovim starts, `init.lua` checks whether `lazy.nvim` exists.

If it does not exist, it automatically clones it:

```lua
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    repo,
    "--branch=stable",
    lazypath
  }
end
```

The configuration then loads NvChad:

```lua
{
  "NvChad/NvChad",
  lazy = false,
  branch = "v2.5",
  import = "nvchad.plugins",
}
```

Therefore, NvChad does not need to be installed manually.

---

# Configuration Structure

The main configuration is located at:

```text
~/.config/nvim/
```

The basic structure is:

```text
~/.config/nvim/
├── init.lua
├── lazy-lock.json
├── .stylua.toml
└── lua/
    ├── autocmds.lua
    ├── mappings.lua
    ├── options.lua
    ├── configs/
    └── plugins/
```

### `init.lua`

The main entry point of the configuration.

It is responsible for:

- Bootstrapping `lazy.nvim`
- Loading NvChad
- Loading custom plugins
- Loading options
- Loading autocommands
- Loading keymaps

### `lua/options.lua`

Contains custom Neovim options.

### `lua/mappings.lua`

Contains custom keymaps.

### `lua/autocmds.lua`

Contains custom autocommands.

### `lua/configs/`

Contains configuration for individual plugins and other components.

### `lua/plugins/`

Contains the plugin specifications used by this configuration.

### `lazy-lock.json`

Contains the locked versions/commits of installed plugins.

This helps keep plugin versions consistent between installations.

---

# Updating the Configuration

To update this configuration, go to the configuration directory:

```bash
cd ~/.config/nvim
```

Pull the latest changes:

```bash
git pull
```

Then start Neovim:

```bash
nvim
```

`lazy.nvim` will handle plugin updates according to the configuration.

---

# Restoring Your Previous Configuration

If you created a backup before installing this configuration:

```bash
mv ~/.config/nvim ~/.config/nvim.backup
```

You can remove the current configuration and restore your previous one:

```bash
rm -rf ~/.config/nvim
mv ~/.config/nvim.backup ~/.config/nvim
```

---

# Troubleshooting

## Neovim Does Not Start

Check your Neovim version:

```bash
nvim --version
```

Make sure it satisfies the requirements of the NvChad version used by this configuration.

---

## Icons Look Incorrect

Make sure your terminal is using a Nerd Font.

For example:

```text
JetBrainsMono Nerd Font
```

Then restart your terminal.

---

## Treesitter Parser Installation Fails

Make sure Tree-sitter CLI is installed:

```bash
tree-sitter --version
```

If it is not installed:

```bash
sudo pacman -S tree-sitter-cli
```

Also make sure GCC and Make are installed:

```bash
sudo pacman -S gcc make
```

---

## Telescope Search Does Not Work

Make sure Ripgrep is installed:

```bash
rg --version
```

If it is not installed:

```bash
sudo pacman -S ripgrep
```

---

# Credits

- [NvChad](https://nvchad.com/)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [Neovim](https://neovim.io/)

---
