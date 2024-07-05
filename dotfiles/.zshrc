source ~/.zshenv
source ~/.zsh-functions

# Load rbenv automatically
eval "$(rbenv init - zsh)"

# Prompt
parse_git_dirty() {
  git_status="$(git status 2> /dev/null)"
  [[ "$git_status" =~ "Changes to be committed:" ]] && echo -n "%F{yellow}⏺%f"
  [[ "$git_status" =~ "Changes not staged for commit:" ]] && echo -n "%F{green}✚%f"
  [[ "$git_status" =~ "Untracked files:" ]] && echo -n "%F{cyan}…%f"
  [[ "$git_status" =~ "nothing to commit, working tree clean" ]] && echo -n "%F{green}✔︎%f"
  [[ "$git_status" =~ "Unmerged paths:" ]] && echo -n "%F{red}!%f"
}

setopt prompt_subst

NEWLINE=$'\n'

autoload -Uz vcs_info # enable vcs_info
precmd () { vcs_info } # always load before displaying the prompt
zstyle ':vcs_info:git*' formats ' ↣ (%F{254}%b%F{245})' # format $vcs_info_msg_0_

PS1='%F{254}%n%F{245} ↣ %F{153}%(5~|%-1~/⋯/%3~|%4~)%F{245}${vcs_info_msg_0_} $(parse_git_dirty)$NEWLINE%F{254}$%f '
RPROMPT="%F{yellow}[%D{%m/%f/%y %H:%M:%S}]"

# ZSH History
# How many commands to store in history
HISTSIZE=10000
SAVEHIST=10000
# Share history in every terminal session
setopt SHARE_HISTORY

# Autocompletions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

source ~/.aliases
