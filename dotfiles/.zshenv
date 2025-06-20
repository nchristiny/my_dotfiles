export PATH="/opt/homebrew/opt/openssl@1.3/bin:$PATH"

# Colors ls should use for folders, files, symlinks etc, see `man ls` and
# search for LSCOLORS
export LSCOLORS=ExGxFxdxCxDxDxaccxaeex

# Force grep to always use the color option and show line numbers
export GREP_OPTIONS='--color=auto'

# VS Code
export EDITOR=$(which code)

# Ruby (Needed for 3.x M1 Mac)
export RUBY_MAKE_OPTS=-j1

# Postgres
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/postgresql@15/lib"
export CPPFLAGS="-I/opt/homebrew/opt/postgresql@15/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/postgresql@15/lib/pkgconfig"

# Use brew cUrl
export PATH="/opt/homebrew/opt/curl/bin:$PATH" 