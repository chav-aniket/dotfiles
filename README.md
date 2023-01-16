# Ubuntu System Starter Guide [USSG]

> Written by Aniket Chavan @[chav.dev](https://chav.dev)

## Introduction to the system

Hi! Welcome to my Ubuntu system starter. This repo was created to help me set up a new system on whichever machine I may have. It focuses around the basics of shell utilities, version control and editors for which we use zsh, git/github and nvim. I do love fish and mac so I'll be creating versions of this to tailor those experiences also.

In this doc you'll find an explanation for how to get an Ubuntu system started from scratch using this repo, an explanation for what exactly it sets up and also some notes on what to do after this repo has served its purpose.

## Assumptions

1. git is pre-installed.

## Using system starter

1. run `sh ~/dotfiles/scripts/setup.sh`
2. create ssh key/s and configure correct keys to load in `startup.sh`
3. set git configs

## SSH

### How to add an SSH key

Use the `ssh-keygen` command and pass a specific name such as "personal_github", press enter without any value for the passphrase.

The `startup.sh` script starts the ssh-agent and you can set it up to add your ssh keys.

Read these articles to learn more about how ssh keys are generated and how the ssh-agent works.

<https://www.ssh.com/academy/ssh/keygen#what-is-ssh-keygen?>
<https://www.ssh.com/academy/ssh/agent>

## Neovim Configuration

This neovim setup is following [ThePrimeagen](https://github.com/ThePrimeagen)'s setup video: [0 to LSP : Neovim RC From Scratch](https://www.youtube.com/watch?v=w7i4amO_zaE).

The `setup.sh` script will copy the contents of the `neovim` directory into `~/.config`.

```text
nvim
├── after
│   └── plugin
│       ├── colours.lua
│       ├── fugitive.lua
│       ├── harpoon.lua
│       ├── lsp.lua
│       ├── lualine.lua
│       ├── telescope.lua
│       ├── treesitter.lua
│       └── undotree.lua
├── init.lua
├── lua
│   └── uss
│       ├── init.lua
│       ├── packer.lua
│       ├── remap.lua
│       └── set.lua
└── plugin
    └── packer_compiled.lua
```

> You can rename the `uss` directory to a name of your choosing.

Above is a folder structure for the neovim configuration. The `after/plugin` subdirectory contains configuration files for each plugin which are loaded in *after* neovim has loaded up.

The outermost `init.lua` is the first entrypoint for neovim configuration.

The `lua/uss` subdirectory contains an `init.lua` which loads in the other scripts, each abstracted to take care of plugins in `packer.lua`, keybinding remaps in `remap.lua` and global vim configs in `set.lua`.

### Useful Custom Commands + Keybindings

#### Commands

- `:lua ColourMyPencils()`: applies colour theme and transparency
- `:PackerSync`: installs packer plugins
- `:Mason`: opens a GUI to select and install language servers

#### Keybindings

> Should be noted that the leader key is [SPACE].

- `<leader>+pv`: return to filetree
- `<leader>+pf`: file fuzzy finder
- `<leader>+ps`: text fuzzy finder
- `<ctr>+p`: file fuzzy finder for git tracked files
- `<leader>+c`: select a buffer to close

### Neovim Plugins Installed

| Plugin | Description | Link |
| ------ | ----------- | ---- |
| packer | neovim package manager | [github][packer-gh] |
| telescope | fuzzy finder for files | [github][telescope-gh] |
| onedark | colour theme | [github][onedark-gh] |
| treesitter | crazy powerful AST builder enabling syntax highlighting and other stuff | [github][treesitter-gh] |
| harpoon | quickly switch between a bunch of files | [github][harpoon-gh] |
| undotree | builds an undotree which you can interact with at any point | [github][undotree-gh] |
| vim-fugitive | git commands in neovim | [github][vim-fugitive-gh] |
| lsp-zero | easy config for neovim LSP, enables code intellisense | [github][lsp-zero-gh] |
| lualine | status bar for neovim configurable in lua | [github][lualine-gh] |
| modes | different line highlighting based on editor mode | [github][modes-gh] |

[packer-gh]: https://github.com/wbthomason/packer.nvim
[telescope-gh]: https://github.com/nvim-telescope/telescope.nvim
[onedark-gh]: https://github.com/joshdick/onedark.vim
[treesitter-gh]: https://github.com/nvim-treesitter/nvim-treesitter
[harpoon-gh]: https://github.com/ThePrimeagen/harpoon
[undotree-gh]: https://github.com/ThePrimeagen/harpoon
[vim-fugitive-gh]: https://github.com/tpope/vim-fugitive
[lsp-zero-gh]: https://github.com/VonHeikemen/lsp-zero.nvim
[lualine-gh]: https://github.com/nvim-lualine/lualine.nvim
[modes-gh]: https://github.com/mvllow/modes.nvim

## Installed applications

| Tool | Description | Link |
| ---- | ----------- | ---- |
| zsh | better shell alternative for bash  | [website][zsh-ws] |
| oh-my-zsh | manager for zsh for maintaining best zsh configs and simplifying customisation in plugins and themes | [website][omz-ws] |
| znap | another tool for making zsh plugin installs easier | [github][znap-gh] |
| zsh-autocomplete | Gives live auto-completions for directories and files | [github][zsh-ac-gh] |
| zsh-autosuggestions | Brings fish-like suggestions for previously used commands | [github][zsh-as-gh] |
| zsh-syntax-highlighting | Brings fish-like syntax highlighiting to zsh | [github][zsh-sh-gh] |
| powerlevel10k | best theme for zsh | [github][powerlevel10k-gh] |
| gh cli | github's cli | [github][ghcli-gh] |
| just | imagine package.json scripts but language agnostic, it allows project specific utility scripts | [website][just-ws] |
| neovim | modal terminal editor | [website][neovim-ws] |

[zsh-ws]: https://www.zsh.org
[omz-ws]: https://ohmyz.sh
[znap-gh]: https://github.com/marlonrichert/zsh-snap
[zsh-ac-gh]: https://github.com/marlonrichert/zsh-autocomplete
[zsh-as-gh]: https://github.com/zsh-users/zsh-autosuggestions
[zsh-sh-gh]: https://github.com/zsh-users/zsh-syntax-highlighting
[powerlevel10k-gh]: https://github.com/romkatv/powerlevel10k#oh-my-zsh
[ghcli-gh]: https://github.com/cli/cli#installation
[just-ws]: https://just.systems/man/en/chapter_1.html
[neovim-ws]: https://neovim.io
