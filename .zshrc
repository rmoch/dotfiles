
export TERM="xterm-256color"
# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Look in ~/.oh-my-zsh/themes/
# test theme at http://zshthem.es/
ZSH_THEME="pygmalion"  # "rkj-repos"

#source ~/dotfiles/passwords.txt

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
plugins=(git sublime python nyan macports vagrant z)

export HISTSIZE=32768;
export HISTFILESIZE=$HISTSIZE;
export HISTCONTROL=ignoredups;
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help";


# /opt/local/lib/postgresql90/bin
export PATH=PATH:/Applications/Postgres.app/Contents/Versions/latest/bin:/opt/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/opt/local/sbin:/usr/local/git/bin


# PYTHON
# Pour resoudre les problèmes d'installation globale au système de paquets Python non OSX depuis El Capitan
# on créé un venv Python 2.7 (ou 3.5) qui s'active avec la session
# http://apple.stackexchange.com/questions/209572/how-to-use-pip-after-the-el-capitan-max-os-x-upgrade
# Attention le PATH doit être défini avant
source ~/.virtualenvs/richard27/bin/activate
# Il faut aussi sourcer le script virtualenvwrapper.sh correspondant pour avoir les commandes helpers (mkvirtualenv...)
source /opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh


source $ZSH/oh-my-zsh.sh
unsetopt correct_all
unsetopt share_history


alias sub=st  # st alias is created by sublime ohmyzsh plugin (wherever is sublime)
alias tailf=tail -f


alias sub="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

# Recurvive, Ignore binaries, show line number
export GREP_OPTIONS='-nRI --color=always --exclude-dir=__pycache__ --exclude-dir=.nodeproject --exclude-dir=CVS --exclude-dir=SVN --exclude-dir=.git --exclude-dir=.hg'

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
