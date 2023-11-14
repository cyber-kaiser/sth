#PROMPT
export PS1="%n@%M %U%~%u "
#OPTIONS
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/cyberkaiser/.zshrc'

autoload -Uz compinit
compinit
setopt correctall
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
setopt autocd
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

# End of lines added by compinstall

#PYWAL
# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

#ALIASES
alias ls='ls --color=auto'
alias vi='nvim'
alias l='ls -CF'
alias ll='ls -aCF'
alias lll='ls -alCF'
alias c='clear'
alias refresh-mirrors='sudo reflector -l 30 -f 10 --save /etc/pacman.d/mirrorlist'
