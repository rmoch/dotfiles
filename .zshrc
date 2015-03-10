export TERM="xterm-256color"
# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Look in ~/.oh-my-zsh/themes/
# test theme at http://zshthem.es/
ZSH_THEME="pygmalion"  # "rkj-repos"

# af-magic  pas mal, non compatible avec tmux ?

source ~/dotfiles/passwords.txt

# Example aliases
alias zshconfig="sub ~/.zshrc"
alias ohmyzsh="sub ~/.oh-my-zsh"
alias snx-connect="echo $CINESVPNPASSWORD | snx -s $CINESVPNIP -u $CINESVPNUSER"

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
plugins=(catimg git sublime mercurial osx python nyan macports vagrant z)

export HISTSIZE=32768;
export HISTFILESIZE=$HISTSIZE;
export HISTCONTROL=ignoredups;
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help";

source $ZSH/oh-my-zsh.sh
unsetopt correct_all
unsetopt share_history

# /opt/local/lib/postgresql90/bin
export PATH=PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin:/opt/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/opt/local/sbin:/usr/local/git/bin:/Users/richard/.gem/ruby/1.8/bin:$HOME/.rvm/bin


alias always='ssh rmoch@ssh.alwaysdata.com'
alias poedit='find . -name "*.po" |xargs open /Applications/Poedit.app'
alias as='workon autoslave; cd ~/dev/autoslave/autoslave/autoslave/; git status'
alias libe='workon liberation; cd ~/dev/liberation/djaz/projects/liberation; hg status'
alias fluffy='workon optiflows; cd ~/dev/optiflows/fluffy-valentin/fluffy/; hg status'
alias sub=st
#alias cat=hicat

source /opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh

alias sub="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias hgsta='hg status'

function swap()
{
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE
    mv "$2" "$1"
    mv $TMPFILE "$2"
}
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python

autoload -U compinit; compinit


export DOCKER_CERT_PATH=/Users/richard/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376