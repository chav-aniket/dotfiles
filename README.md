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

## Walkthrough of zshrc

**L1-8:** purely cosmetic startup messages.

**L10:** startup shell script that is abstracted for easy customisation

**L13-18:** p10k instant prompt for a quicker shell prompt

**L28-33:** installing Znap and znap plugins

**L35-67:** zsh/ohmyzsh configurations

**L69-78:** zsh plugins

**L80:** sourcing ohmyzsh script

**L99-116**: aliases

**L119:** source p10k configurations

## SSH

### How to add an SSH key

Use the `ssh-keygen` command and pass a specific name such as "personal_github", press enter without any value for the passphrase.

The `startup.sh` script starts the ssh-agent and you can set it up to add your ssh keys.

## Installed applications

| Tool | Description | Link |
| ---- | ----------- | ---- |
| zsh | Better shell alternative for bash  | [website][zsh-ws] |
| oh-my-zsh | manager for zsh for maintaining best zsh configs and simplifying customisation in plugins and themes | [website][omz-ws] |
| znap | another tool for making zsh plugin installs easier | [github][znap-gh] |
| zsh-autocomplete | Gives live auto-completions for directories and files | [github][zsh-ac-gh] |
| zsh-autosuggestions | Brings fish-like suggestions for previously used commands | [github][zsh-as-gh] |
| zsh-syntax-highlighting | Brings fish-like syntax highlighiting to zsh | [github][zsh-sh-gh] |
| powerlevel10k | best theme for zsh | [github][powerlevel10k-gh] |
| gh cli | github's cli | [github][ghcli-gh] |
| just | imagine package.json scripts but language agnostic, it allows project specific utility scripts | [website][just-ws] |

[zsh-ws]: https://www.zsh.org
[omz-ws]: https://ohmyz.sh
[znap-gh]: https://github.com/marlonrichert/zsh-snap
[zsh-ac-gh]: https://github.com/marlonrichert/zsh-autocomplete
[zsh-as-gh]: https://github.com/zsh-users/zsh-autosuggestions
[zsh-sh-gh]: https://github.com/zsh-users/zsh-syntax-highlighting
[powerlevel10k-gh]: https://github.com/romkatv/powerlevel10k#oh-my-zsh
[ghcli-gh]: https://github.com/cli/cli#installation
[just-ws]: https://just.systems/man/en/chapter_1.html
