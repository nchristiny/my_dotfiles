# Useful aliases
# Force ls to use colors (G) and use humanized file sizes (h)
alias ls='ls -Gh'
alias cd..="cd .."
alias ..='cd ..'
alias rm="trash -v"
alias be="bundle exec"
alias mkdir="mkdir -pv"
alias mv="mv -iv"
alias cp="cp -iv"
alias ln="ln -iv"
alias la="ls -la"
alias ll="ls -aF"
alias be="bundle exec"
alias subl="subl -n"
alias bashrc="subl ~/.bashrc && source ~/.bashrc"
alias reload="source ~/.bash_profile"
alias zzz="pmset sleepnow"
alias myip="curl http://ipecho.net/plain; echo"

# Experimental
alias PATH='echo -e ${PATH//:/\\n}'
alias sha1='openssl sha1'
alias diff='colordiff'
alias mount='mount |column -t'

#Memory CPU GPU Usage
## pass options to free
alias meminfo='free -m -l -t'

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

## Get server cpu info
alias cpuinfo='lscpu'

## get GPU ram on desktop / laptop##
# alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'

# Network
# quickly list all TCP/UDP port on the server:
alias ports='netstat -tulanp'
# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'
# get web server headers #
alias header='curl -I'
# find out if remote server supports gzip / mod_deflate or not #
alias headerc='curl -I --compress'

# Resume wget by default in case of interruption
alias wget='wget -c'

# Disks
alias df='df -H'
alias du='du -ch'

# # Open man page in Vim
# # https://stackoverflow.com/a/42466441/4808755
# alias wat='f(){ man "$1" | ul -i | vim -;  unset -f f; }; f'

# reboot / halt / poweroff
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

# Projects
# Rails
alias rakestuff="rake db:migrate db:rollback && rake db:migrate db:test:prepare"
alias dbreset="be rake db:drop; be rake db:create && be rake db:migrate && be rake db:seed"
alias gum="git pull upstream master"

# Personal
alias blog="cd ~/Dropbox/code/nchristiny.github.io/"
alias serveblog="jekyll serve --config _config.yml,_config_dev.yml"
alias weather="curl -4 http://wttr.in/"
