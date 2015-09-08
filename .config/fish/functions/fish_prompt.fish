function fish_prompt --description 'Write out the prompt'
	set -l last_status $status
  echo
  if set -q VIRTUAL_ENV
    echo -n -s "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
  end
  # User
  set_color $fish_color_user
  echo -n (whoami)
  set_color normal

  echo -n '@'

  # Host
  set_color $fish_color_host
  echo -n (hostname -s)
  set_color normal

  echo -n ':'

  # PWD
  set_color blue
  echo -n (pwd)
  set_color normal

  __git_prompt
  echo

  if not test $last_status -eq 0
    set_color $fish_color_error
  end

  echo -n '➤ '
  set_color normal
end
