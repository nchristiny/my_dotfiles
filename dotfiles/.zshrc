echo "Logged in as $USER at $(hostname)"

# Load rbenv automatically
eval "$(rbenv init - zsh)"
#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
alias reload="source ~/.zshrc"
alias zshconfig="subl ~/.zshrc"
alias PATH="echo $PATH | tr : '\n'"
alias code=codium
