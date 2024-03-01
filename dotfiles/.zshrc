# Load rbenv automatically
eval "$(rbenv init - zsh)"

# Colors ls should use for folders, files, symlinks etc, see `man ls` and
# search for LSCOLORS
export LSCOLORS=ExGxFxdxCxDxDxaccxaeex

# Force grep to always use the color option and show line numbers
export GREP_OPTIONS='--color=auto'

# Prompt
# PS1='%K{blue}%F{yellow}%n@%m%f%k%/ $ '
PS1='%K{green}%F{black}%n@%m%k%f%K{blue}%F{yellow}%/%k%f $ '
source ~/.aliases