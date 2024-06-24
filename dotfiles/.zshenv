export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"

# Colors ls should use for folders, files, symlinks etc, see `man ls` and
# search for LSCOLORS
export LSCOLORS=ExGxFxdxCxDxDxaccxaeex

# Force grep to always use the color option and show line numbers
export GREP_OPTIONS='--color=auto'

# VS Code
export EDITOR=$(which code)

# Ruby (Needed for 3.x M1 Mac)
# export RUBY_MAKE_OPTS=-j1