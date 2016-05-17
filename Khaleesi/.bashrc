# (fortune -s computers | cowsay -f tux) | lolcat

# random Zen of Python quote
# https://gist.github.com/AgustinLado/4fd1355bf5b8edae2261
python -c "import sys, random; stdout = sys.stdout; sys.stdout = type('BlackHole', (), {'write': (lambda self, string: '')})(); import this; sys.stdout = stdout; print random.choice(''.join([this.d.get(i, i) for i in this.s]).splitlines()[2:]);" | cowsay -f tux | lolcat
echo "Greetings $USER."
echo "I'm completely operational, and all my circuits are functioning perfectly."

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
alias imageoptim="imageoptim -j -a -q -d"

# Personal
alias blog="cd Dropbox/projects/nchristiny.github.io/"
alias serveblog="jekyll serve --config _config.yml,_config_dev.yml"
alias weather="curl -4 http://wttr.in/Chicago"
