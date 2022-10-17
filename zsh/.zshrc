# History
setopt EXTENDED_HISTORY HIST_IGNORE_ALL_DUPS 
HISTFILE="$ZDOTDIR/.zsh_history"
HISTSIZE=2048
SAVEHIST=2048
LESSHISTFILE="/dev/null"

# Variables
export EDITOR="nvim"
export BROWSER="firefox"

# Keybindings
bindkey -e

# Alias
setopt COMPLETE_ALIASES
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias top="htop"
alias startx="startx &>/dev/null"
alias pacman="sudo pacman"

# Completion
setopt AUTO_LIST AUTO_MENU
autoload -Uz compinit
compinit
zstyle :compinstall filename '$ZDOTDIR/.zshrc'
zstyle ':completion:*' menu select
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# Prompt 
PROMPT="%B%~%b %# " 
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  RPROMPT="%F{blue}%n%f@%m %F{yellow}%t%f"
else
  RPROMPT="%F{blue}%n%f@%y %F{yellow}%t%f"
fi

# Title
precmd () {print -Pn "\e]2;%~\a"}
preexec () {print -Pn "\e]2;$1\a"}

# Other options
unsetopt BEEP
setopt AUTO_CD AUTO_PUSHD PUSHD_IGNORE_DUPS
setopt TRANSIENT_RPROMPT
