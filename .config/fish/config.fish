set -x PATH $PATH /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin

set -x PROJECT_HOME ~/clones/
eval (python -m virtualfish compat_aliases)

set -x GOPATH ~/golang

set -x LESSOPEN "| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
set -x LESS ' -R --follow-name '

set -x HISTCONTROL 'ignorespace'