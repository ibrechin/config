function gst
	git status
end

function grb
	git rebase -i $argv
end

function gco
	git checkout $argv
end

function gpom
	git pull origin master
end
