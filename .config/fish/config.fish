set -x PATH /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/games usr/local/games

set -x PROJECT_HOME ~/clones/

set -x GOPATH ~/golang

set -x LESSOPEN "| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
set -x LESS ' -R --follow-name '

set -x HISTCONTROL 'ignorespace'

function fish_title
    true
end

. /usr/share/autojump/autojump.fish

set fish_greeting

set -x PGUSER ian
set -x PGPASS ian
