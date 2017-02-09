autoload bashcompinit
bashcompinit

export TERM=xterm-256color
export EDITOR=/usr/bin/subl
export DEFAULT_USER=nih
export GOPATH=~/go
export PATH="$PATH:$GOPATH/bin:$(ruby -e "print Gem.user_dir")/bin:$HOME/.dotfiles/bin:$HOME/.config/composer/vendor/bin"

# setting for https://github.com/chrisallenlane/cheat
export CHEATPATH="$CHEATPATH:$HOME/.dotfiles/cheat"
export CHEATCOLORS=true

# Autocompletion files
fpath=($HOME/.zsh/autocompletion $fpath)

# Load more configuration
source ~/.zsh/conf/antigen.zsh           # Load and configure Antigen
source ~/.zsh/conf/powerlevel9k.zsh      # Configure Powerlevel9k
source ~/.zsh/conf/helpers.zsh           # Load helper functions

# Aliases and Functions
source ~/.zsh/general.zsh                   # General Shortcuts
source ~/.zsh/aliases.zsh                   # Aliases
source_files_in_dir ~/.zsh/dev/*.zsh        # Development Shortcuts
source ~/.zsh/repos.zsh                     # Repo Shortcuts
source ~/.zsh/hash.zsh                      # Hashing Shortcuts
source ~/.zsh/misc.zsh                      # Miscelaneous shortcuts/tools
source_files_in_dir ~/.zsh/scripts/*.zsh    # Scripts
source ~/.zsh/os/main.zsh                   # Special commands for the current os

# VTE support
source /etc/profile.d/vte.sh
