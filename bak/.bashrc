# Bashrc

# If not running interactively return
[[ $- != *i* ]] && return

export PATH=$HOME/bin:$PATH
export HISTCONTROL=ignoreboth:erasedups

export VISUAL="/usr/bin/nvim"
export EDITOR="$VISUAL"

export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

# Shell options
shopt -s autocd         # change to named directory
shopt -s cdspell        # autocorrects cd misspellings
shopt -s cmdhist        # save multi-line commands in history as single line
shopt -s histappend     # do not overwrite history
shopt -s expand_aliases # expand aliases

# Prompt
PS1='\u@\h \W \$ '

# Alias
alias l='ls'
alias la='ls -A'
alias ll='ls -lA'
alias ls='ls --color=auto'
alias upd='sudo pacman -Syyu'
alias pac='sudo pacman --color auto'
alias merge='xrdb -merge ~/.Xresources'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias mirrors='sudo reflector --score 100 --fastest 25 --sort rate --save /etc/pacman.d/mirrorlist --verbose'
alias themite='python ~/.config/termite/themite/themite.py'
alias backup='duplicity ~ b2://340449f49689:00000589318f701e4bd6b78546c942f1b50e546505@Laptop-Archlabs'
alias dotfiles-push='git push -u origin master'
alias dotfiles-commit="git commit -m 'Configuration update'"
alias dotfiles-pull='python ~/.dotfiles/py/updateconfigs.py'
alias dotfiles-superpush='python ~/.dotfiles/py/superpush.py'
alias dotfiles-plush='dotfiles-pull && dotfiles-superpush'
alias orphans='sudo pacman -Rns $(pacman -Qtdq)'

#powerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

neofetch

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
