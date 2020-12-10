# key bindings
bindkey -e

# options
setopt prompt_subst
setopt autocd
unsetopt nomatch

# bash-like word movement
autoload -U select-word-style
select-word-style bash

# source control info
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git 
zstyle ':vcs_info:*' check-for-changes true # dirty indicators
zstyle ':vcs_info:*' stagedstr '%F{green}*%f' # staged changes in repo
zstyle ':vcs_info:*' unstagedstr '%F{red}*%f' # unstaged changes
CUSTOM_GIT_PROMPT_FORMAT='%u%c %b'
ACTION_PROMPT_FORMAT=$CUSTOM_GIT_PROMPT_FORMAT' %F{magenta}%a%f'
zstyle ':vcs_info:*' formats $CUSTOM_GIT_PROMPT_FORMAT
zstyle ':vcs_info:*' actionformats $ACTION_PROMPT_FORMAT

# run vcs_info before the prompt is displayed and check for untracked files
precmd() {
  vcs_info
}

# prompt
export PROMPT='%5~ %F{blue}>%f '
export RPROMPT='${vcs_info_msg_0_}'

### completion
autoload -Uz compinit
compinit

# case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# key-browsable suggestions
zstyle ':completion:*' menu select

### aliases
alias ls="ls -Gh"
alias ll="ls -l"
alias la="ls -lA"
alias aci="ack -i"
alias rmr="rm -rf"
alias o="open"
alias g="git"
alias t="tmux new-session -A -s 0"
alias svim="sudo vim -u ~/.vimrc"
alias be="bundle exec"
alias sudo='sudo ' # tell sudo to respect aliases

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && . ~/.localrc
