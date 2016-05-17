date
echo "Logged in as $USER@$(hostname)"

# Path for RBENV
test -d "$HOME/.rbenv/" && PATH="$HOME/.rbenv/bin:$PATH"
# Path for brew
test -d /usr/local/bin && export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
# Path for Heroku
test -d /usr/local/heroku/ && export PATH="/usr/local/heroku/bin:$PATH"
# Load RVM into a shell session *as a function*
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# Path for RVM
# test -d "$HOME/.rvm/bin" && PATH="$PATH:$HOME/.rvm/bin"

# Load git completions, color and PS1 variable
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\n\[\033[34m\]\W\[\033[31m\]$(__git_ps1 " (%s)")\[\033[00m\]\$ '
# bash-git-prompt https://github.com/magicmonty/bash-git-prompt
if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
  GIT_PROMPT_THEME=Default
  source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

# Bash completion:
# $ brew install bash-completion
# $ brew tap homebrew/completions
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# Set config variables first
GIT_PROMPT_ONLY_IN_REPO=1

# GIT_PROMPT_FETCH_REMOTE_STATUS=0   # uncomment to avoid fetching remote status

GIT_PROMPT_SHOW_UPSTREAM=1 # uncomment to show upstream tracking branch
GIT_PROMPT_SHOW_UNTRACKED_FILES=normal # can be no, normal or all; determines counting of untracked files

# GIT_PROMPT_STATUS_COMMAND=gitstatus_pre-1.7.10.sh # uncomment to support Git older than 1.7.10

# GIT_PROMPT_START=...    # uncomment for custom prompt start sequence
# GIT_PROMPT_END=...      # uncomment for custom prompt end sequence

# as last entry source the gitprompt script
# GIT_PROMPT_THEME=Custom # use custom .git-prompt-colors.sh
# GIT_PROMPT_THEME=Solarized # use theme optimized for solarized color scheme
source /usr/local/etc/bash_completion.d/git-prompt.sh

# Rbenv autocomplete and shims
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Force ls to use colors (G) and use humanized file sizes (h)
export LSCOLORS=ExGxFxdxCxDxDxaccxaeex
# Force grep to always use the color option and show line numbers
export GREP_OPTIONS='--color=always'

# Set sublime as the default editor
which -s subl && export EDITOR="subl --wait"

# Aliases
# System
alias ls="ls -lAhGotr"
alias rm="trash -v"
alias cd..="cd .."
alias ..='cd ..'
alias mkdir="mkdir -pv"
alias mv="mv -iv"
alias cp="cp -iv"
alias ln="ln -iv"
alias be="bundle exec"
alias PATH="echo $PATH | tr : '\n'"
alias subl="subl -n"
alias macd="macdown"
alias psmem="ps aux | sort -nr -k 4 | head -10"
alias pscpu10="ps aux | sort -nr -k 3 | head -10"
alias bashrc="subl ~/.bashrc && source ~/.bashrc"
alias dodo="pmset sleepnow"
alias reload="source ~/.bash_profile"

# Projects
alias dbreset="be rake db:drop; be rake db:create && be rake db:migrate && be rake db:seed"
alias gitk="gitk --all&"
alias railsgitheroku="rails new . --git --database=postgresql"
alias imageoptim="imageoptim -j -a -q -d"

# Personal
alias jv="cd Dropbox/jv_apprentice"
alias blog="cd Dropbox/projects/nchristiny.github.io/"
alias serveblog="jekyll serve --config _config.yml,_config_dev.yml"
alias weather="curl -4 http://wttr.in/Chicago"

# fortune -se computers| cowsay -f tux | lolcat

# Zen of Python
python -c "import sys, random; stdout = sys.stdout; sys.stdout = type('BlackHole', (), {'write': (lambda self, string: '')})(); import this; sys.stdout = stdout; print random.choice(''.join([this.d.get(i, i) for i in this.s]).splitlines()[2:]);" | cowsay -f tux  | lolcat

echo "I'm completely operational, and all of my circuits are functioning perfectly."
