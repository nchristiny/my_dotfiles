# (fortune -s computers | cowsay -f tux) | lolcat

# random Zen of Python quote
# https://gist.github.com/AgustinLado/4fd1355bf5b8edae2261
python -c "import sys, random; stdout = sys.stdout; sys.stdout = type('BlackHole', (), {'write': (lambda self, string: '')})(); import this; sys.stdout = stdout; print random.choice(''.join([this.d.get(i, i) for i in this.s]).splitlines()[2:]);" | cowsay -f tux | lolcat
echo "Greetings $USER."
echo "I'm completely operational, and all my circuits are functioning perfectly."


# Useful aliases
alias be="bundle exec"
alias rm="trash"
alias blog="cd Dropbox/projects/nchristiny.github.io/"
alias serveblog="jekyll serve --config _config.yml,_config_dev.yml"
alias gk="gitk --all&"
# alias railsnew="rails new . --git --database=postgresql"
