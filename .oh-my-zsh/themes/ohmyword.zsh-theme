# ohmyword.zsh-theme
# 
# Author: Ian Brechin
#
# Based on af-magic.zsh-theme
#
# Author: Andy Fleming
# URL: http://andyfleming.com/
# Repo: https://github.com/andyfleming/oh-my-zsh
# Direct Link: https://github.com/andyfleming/oh-my-zsh/blob/master/themes/af-magic.zsh-theme


if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# primary prompt
PROMPT='
$FG[014]%n@%m%-------------------------------------------%{$reset_color%}
$FG[004]%~ \
$FG[004]%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'


# color vars
eval my_gray='$FG[014]'
eval my_orange='$FG[001]'

# right prompt
RPROMPT='$(git_prompt_info)$(svn_prompt_info)'

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[003](branch:"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[003])%{$reset_color%}"

ZSH_THEME_SVN_PROMPT_PREFIX="$FG[003](branch:"
ZSH_THEME_SVN_PROMPT_CLEAN=""
ZSH_THEME_SVN_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_SVN_PROMPT_SUFFIX="$FG[003])%{$reset_color%}"
