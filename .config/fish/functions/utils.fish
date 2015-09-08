function fp
	ps -e | grep $argv
end

function fpa
	ps aux | grep $argv
end

function xclip
	xclip -selection c
end