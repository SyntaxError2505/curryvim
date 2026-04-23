# Curryvim
**This Section is for people who already decided to use curryvim. If you need arguments please read [What is curryvim](#what-is-curryvim)**
## Getting Started
All you need is an install of Neovim on either: MacOS, Linux or Windows via WSL. It might as well work natively on windows but will not be tested or cared for.
Git is also needed to get the repo onto your system. If not possible for whatever reason, download as zip, unzip and move into ~/.config/nvim
### Install
Install the `neovim` package trough brew or your distros package manager. Neovim >0.11 is recommended. If not possible, consider building it from source.  
```any good shell
# Save a potential neovim installation
mv ~/.config/nvim ~/.config/nvim_bak
# clone repo and start neovim
git clone https://github.com/SyntaxError2505/curryvim.git ~/.config/nvim
nvim
```
If everything worked, you should see the editor with a lazy pop-up, listing and installing plugins  
#### Note
Maybe there are some errors at startup. Those may be caused by plugins that are referencing dependencies, that are not yet installed. Wait till everything is installed and restart neovim. If the error persists -> Open an issue in github
### Dependencies
- Build or install lazygit for the in-editor-tui to work.
- Also some plugins may require standard build-systems like `make`. Make sure, that it is installed.
## Usage
### LSPs
Use the :Mason command to install, manage and query Lsps, linters or DAPs. At this point, only LSPs are supported. Your editor will run and configure them automatically. Some do require the build tools, of the languages they are written in.  
Also, trough mason-lspconfig -> You can call `:LspInstall` in a file and it will list the possible LSPs for it's filetype. This is usefull for when you do not wanna search Mason, just to edit a file. Lspconfig will automatically use a community-managed config for any LSP, those may contain errors. Configuring LSPs manually is possible but requires a lot of expertise. It is better to ask/leave an issue in the lsp-config repo. Just don't tell them, that I sent you :)
### Completion and Snippets
Curryvim uses blink.cmp for completion. It is known to be fast and simple to set up and configure. It is designed in a "super-tab" configuration -> Tab accepts the completion like in e.g. vscode. The cursor is automatically placed at the first argument/input of the completed symbol. A "Snippet" is created. You can start editing the first input and use Ctrl+L to jump to the next one and Ctrl+J to go back. Snippets are a quick way to efficiently call symbols without having to type out everything.
### Git
Press Space + l + g to open lazygit. It is a tui interface for your git repo. In it, you can press ? to get a list of keybindings.
### Filetree
Press Space + b to open neotree. Press ? inside to get a list of keybindings.
### FFF grepping
FFF is a performance focused file-switcher/fuzzy-finder for neovim. Press Space + f to get the possible commands from [which-key](which-key). It replaces alternatives like telescope (feature rich and simple), fzf ( requires external tui, easy to use ) or the standard `/` (Only one file, hard to use, native). I chose it mostly because its creator was nice to me while advertising it on twitter :) Also it is pretty fast. It supports:
- Searching for File Names
- String-searching for text
- Typo-resistant fuzzy-searching for text
- Searching for the word your cursor is on ( Using LSP is better for this purpose if you are hovering over a symbol )
### Which-key
If you press `<leader>`, which is configured to be the space key in normal mode, after some time you will get a pop up, that shows possible combinations of keys. This is a good resource to learn curryvim.
### Windows (Not the OS)
Windows in neovim are like windows in emacs or splits in vscode. They are seperate editors with their own content. You can look at them like a tiling window manager on linux. Just open an editor, press <leader> (space) and press v for a vertical split and h for a horizontal one. It will clone the file that is currently open. You can select another one using fff or the filetree. The filetree supports opening new windows by hovering over a file and pressing s or S. You can switch between windows using Ctrl+W + [hjkl] or the mouse.
## What is curryvim
## Why curryvim
