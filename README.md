# 💤 Paul's LazyVim Configuration

Refer to the [documentation](https://lazyvim.github.io/installation) for more information.

## Using python virtual environment

Start Vimr from an activated terminal

```
source venv/bin/activate
vimr --cur-env --cwd .
```

## Setup nerd fonts in ChromeOS (crostini)

Press `Ctrl + Shift + j` to open devtools console in crostini terminal.

Paste this into the console: 

```
term_.prefs_.set('user-css-text', '@font-face {font-family: "Fira Code Nerd Font"; src: url("https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/FiraCode/Light/FiraCodeNerdFont-Light.ttf"); font-weight: normal; font-style: normal;} x-row {text-rendering: optimizeLegibility;font-variant-ligatures: normal;}')
term_.prefs_.set('font-family', '"Fira Code Nerd Font", monospace');
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

## Todo

- How to copy relative file path (from Neotree?)
