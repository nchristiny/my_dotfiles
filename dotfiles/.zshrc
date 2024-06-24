source ~/.zshenv
source ~/.zsh-functions

# Load rbenv automatically
eval "$(rbenv init - zsh)"

# Completions
# Load more completions
fpath=($DOTFILES/zsh/plugins/zsh-completions/src $fpath)

# Should be called before compinit
zmodload zsh/complist

autoload -U compinit; compinit
_comp_options+=(globdots) # With hidden files

# setopt GLOB_COMPLETE      # Show autocompletion menu with globs
setopt MENU_COMPLETE        # Automatically highlight first element of completion menu
setopt AUTO_LIST            # Automatically list choices on ambiguous completion.
setopt COMPLETE_IN_WORD     # Complete from both ends of a word.

# Prompt
parse_git_dirty() {
  git_status="$(git status 2> /dev/null)"
  [[ "$git_status" =~ "Changes to be committed:" ]] && echo -n "%F{yellow}⏺%f"
  [[ "$git_status" =~ "Changes not staged for commit:" ]] && echo -n "%F{green}✚%f"
  [[ "$git_status" =~ "Untracked files:" ]] && echo -n "%F{cyan}…%f"
  [[ "$git_status" =~ "nothing to commit, working tree clean" ]] && echo -n "%F{green}✔︎%f"
}

setopt prompt_subst

NEWLINE=$'\n'

autoload -Uz vcs_info # enable vcs_info
precmd () { vcs_info } # always load before displaying the prompt
zstyle ':vcs_info:git*' formats ' ↣ (%F{254}%b%F{245})' # format $vcs_info_msg_0_

PS1='%F{254}%n%F{245} ↣ %F{153}%(5~|%-1~/⋯/%3~|%4~)%F{245}${vcs_info_msg_0_} $(parse_git_dirty)$NEWLINE%F{254}$%f '

# ZSH History
# How many commands to store in history
HISTSIZE=10000
SAVEHIST=10000
# Share history in every terminal session
setopt SHARE_HISTORY

source ~/.aliases
