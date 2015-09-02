# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ohmyword"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git svn django python ant pip)

source $ZSH/oh-my-zsh.sh

setopt nocorrectall

# Customize to your needs...
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

alias ll='ls -alhF'

#Setup virtual envwrapper for python in case default doesn't work
VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.4
export VIRTUALENVWRAPPER_PYTHON

WORKON_HOME=~/environments/
PROJECT_HOME=~/clones/
source /usr/local/bin/virtualenvwrapper.sh

export GOPATH=~/golang

export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
export LESS=' -R --follow-name '

alias fp='ps -e | grep '
alias fpa='ps aux | grep '

HISTCONTROL='ignorespace'

alias xclip='xclip -selection c'

alias grb='git rebase -i '

if [[ -f ~/.zshrc-local && -r ~/.zshrc-local ]]; then
	source ~/.zshrc-local
fi
