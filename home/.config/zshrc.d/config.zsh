zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' max-errors 3 rehash true
zstyle ':completion:*' menu select
autoload -Uz compinit bashcompinit add-zsh-hook
compinit -d $HOME/.cache/zcompdump
bashcompinit
HISTFILE=$HOME/.cache/zsh_history
HISTSIZE=500
SAVEHIST=500
setopt autocd extendedglob notify correct
unsetopt beep
bindkey -v
autoload -U colors && colors
PS1="%{$fg[green]%}%  %{$reset_color%}%  %{$fg[blue]%}%  %~ %{$reset_color%}%{$fg[white]%}>%{$reset_color%}% "
