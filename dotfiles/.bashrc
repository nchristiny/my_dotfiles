# Set config variables first
GIT_PROMPT_ONLY_IN_REPO=1

# GIT_PROMPT_FETCH_REMOTE_STATUS=0   # uncomment to avoid fetching remote status

# GIT_PROMPT_SHOW_UPSTREAM=1 # uncomment to show upstream tracking branch
# GIT_PROMPT_SHOW_UNTRACKED_FILES=all # can be no, normal or all; determines counting of untracked files

# GIT_PROMPT_STATUS_COMMAND=gitstatus_pre-1.7.10.sh # uncomment to support Git older than 1.7.10

# GIT_PROMPT_START=...    # uncomment for custom prompt start sequence
# GIT_PROMPT_END=...      # uncomment for custom prompt end sequence

# as last entry source the gitprompt script
# GIT_PROMPT_THEME=Custom # use custom .git-prompt-colors.sh
# GIT_PROMPT_THEME=Solarized # use theme optimized for solarized color scheme
source /usr/local/etc/bash_completion.d/git-prompt.sh

# Aliases
# System
alias ls="ls -FArthoG"
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
alias psmem="ps aux | sort -nr -k 4 | head -10"
alias pscpu10="ps aux | sort -nr -k 3 | head -10"
alias bashrc="subl ~/.bashrc && source ~/.bashrc"
alias reload="source ~/.bash_profile"
alias zzz="pmset sleepnow"
alias fhere="find . -name "
alias myip="curl http://ipecho.net/plain; echo"

# Open man page in Vim
# https://stackoverflow.com/a/42466441/4808755
alias wat='f(){ man "$1" | ul -i | vim -;  unset -f f; }; f'

# Apps
alias typora="open -a typora"
alias imageoptim="imageoptim -j -a -q -d"

# Projects
alias dbreset="be rake db:drop; be rake db:create && be rake db:migrate && be rake db:seed"
alias gitk="gitk --all&"

# Personal
alias school="cd ~/Dropbox/school/"
alias proj="cd ~/Dropbox/projects/"
alias blog="cd ~/Dropbox/projects/nchristiny.github.io/"
alias serveblog="jekyll serve --config _config.yml,_config_dev.yml"
alias weather="curl -4 http://wttr.in/Chicago"
