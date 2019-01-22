
export TERM="xterm-256color"
# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

export EDITOR='emacs'

# Look in ~/.oh-my-zsh/themes/
# test theme at http://zshthem.es/
ZSH_THEME="pygmalion"  # "rkj-repos"

#source ~/dotfiles/passwords.txt

# https://github.com/sharkdp/bat
alias cat='bat'

alias zshconfig="sub ~/.zshrc"
alias ohmyzsh="sub ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git sublime python nyan macports vagrant z git-open)

export HISTSIZE=32768;
export HISTFILESIZE=$HISTSIZE;
export HISTCONTROL=ignoredups;
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help";


# /opt/local/lib/postgresql90/bin
export PATH=PATH:/opt/local/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/usr/X11/bin:/opt/local/sbin:/usr/local/git/bin:/opt/local/bin/python


source $ZSH/oh-my-zsh.sh
unsetopt correct_all
unsetopt share_history

alias tailf=tail -f
alias gt=git

# Recurvive, Ignore binaries, show line number
export GREP_OPTIONS='-I --color=always --exclude-dir=__pycache__ --exclude-dir=.nodeproject --exclude-dir=CVS --exclude-dir=SVN --exclude-dir=.git --exclude-dir=.hg'

function swap()
{
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE
    mv "$2" "$1"
    mv $TMPFILE "$2"
}

autoload -U compinit; compinit

man() {
  env LESS_TERMCAP_mb=$'\E[01;31m' \
  LESS_TERMCAP_md=$'\E[01;38;5;74m' \
  LESS_TERMCAP_me=$'\E[0m' \
  LESS_TERMCAP_se=$'\E[0m' \
  LESS_TERMCAP_so=$'\E[38;5;246m' \
  LESS_TERMCAP_ue=$'\E[0m' \
  LESS_TERMCAP_us=$'\E[04;38;5;146m' \
  man "$@"
}

# https://github.com/pindexis/marker
# this do not work with zsh yet
#[[ -s "$HOME/.local/share/marker/marker.sh" ]] && source "$HOME/.local/share/marker/marker.sh"

#https://news.ycombinator.com/item?id=14923362
#https://the.exa.website
#alias ls=/usr/local/bin/exa-macos-x86_64

