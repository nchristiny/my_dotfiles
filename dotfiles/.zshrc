# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Load rbenv automatically
eval "$(rbenv init - zsh)"

echo "Logged in as $USER at $(hostname)"

# Customize to your needs...
alias cd..="cd .."
alias ..='cd ..'
alias rm="trash -v"
alias be="bundle exec"
alias mkdir="mkdir -pv"
alias mv="mv -iv"
alias cp="cp -iv"
alias reload="source ~/.zshrc"
alias zshconfig="subl ~/.zshrc"
alias PATH="echo $PATH | tr : '\n'"
alias code=codium
alias subl="subl -n"

# Resume wget by default in case of interruption
alias wget='wget -c'

# Disks
alias df='df -H'
alias du='du -ch'

# Rails
alias rakeit="rake db:migrate db:rollback && rake db:migrate db:test:prepare"
alias dbreset="be rake db:drop; be rake db:create && be rake db:migrate && be rake db:seed"

# Personal
alias blog="cd ~/src/nchristiny.github.io/"
alias serveblog="jekyll serve --config _config.yml,_config_dev.yml"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
