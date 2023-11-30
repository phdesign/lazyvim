# 💤 Paul's LazyVim Configuration

Refer to the [documentation](https://lazyvim.github.io/installation) for more information.

## Installation

### Mac

```
git clone git@github.com:phdesign/lazygit.git ~/.config/nvim
```

### Windows

```
git clone git@github.com:phdesign/lazygit.git $LOCALAPPDATA/nvim
```

## Using python virtual environment

Start Vimr from an activated terminal

```
source venv/bin/activate
vimr --cur-env --cwd .
```

## ChromeOS setup

### Setup nerd fonts in ChromeOS (crostini)

Press `Ctrl + Shift + j` to open devtools console in crostini terminal.

Paste this into the console:

```
term_.prefs_.set('user-css-text', '@font-face {font-family: "Fira Code Nerd Font"; src: url("https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/FiraCode/Light/FiraCodeNerdFont-Light.ttf"); font-weight: normal; font-style: normal;} x-row {text-rendering: optimizeLegibility;font-variant-ligatures: normal;}')
term_.prefs_.set('font-family', '"Fira Code Nerd Font", monospace');
```

### Setup system clipboard in ChromeOS

```
sudo apt install wl-clipboard
```

### Install Node.js

Install Node.js from NodeSource https://github.com/nodesource/distributions

1. Download and import the Nodesource GPG key

```
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
```

2. Create deb repository

```
NODE_MAJOR=18
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
```

3. Run Update and Install

```
sudo apt-get update
sudo apt-get install nodejs -y
```

## Format unsaved buffer

Set filetype

```
:set ft=json
```

`<leader>cf` Format document

## Keymaps

### Editing

`gcc` Comment line

`cl` Substitute (remap of `s`)

`ciw<tag>` Rename HTML tag using [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)

`<c-y>u` Rename tag using emmet

### Search and replace

`<leader>/` Grep search

Telescope shortcuts

> `<c-k>` Grep with args
>
> `<c-i>` Grep with args (iglob)

`gw` Search word under cursor

`<leader><space>` Find in files (root dir)

`<leader>fr` Recent files

`<leader>sR` Resume last Telescope session

`<c-q>` Show Telescope results in quickfix

### Surround

`gzr` Replace surround
`gzrtt` Replace surrounding tag

### Windows and buffers

`<c-/>` Show terminal (root dir)

`<leader>|` Split window right

`<leader>-` Split window below

`:%bd` Close all buffers

`<leader>,` List buffers

### Spelling

`z=` Spelling suggestions (under cursor)

## Show column marker

```
:set colorcolumn=80
```

## Todo

- How to copy relative file path (from Neotree?)
