# shellcheck disable=SC2148
#############
# macOS
#############

# Custom Exports
export EDITOR=/usr/local/bin/code
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3

# Load Custom Files
include "${HOME}/.zsh/os/mac_iterm2.zsh"

# Custom Aliases
alias cask="brew cask"
alias cpwd="pwd | pbcopy"

# Software Management
# ------------------
in() {
	# Install Shortcut (brew)
	brew install "$@"
}

se() {
	# Search Shortcut (brew)
	brew search "$@"
}

cin() {
	# Install Shortcut (brew cask)
	cask install "$@"
}

cse() {
	# Install Shortcut (brew cask)
	cask search "$@"
}

up() {
	# Update Shortcut
	brew update
	brew upgrade
}
