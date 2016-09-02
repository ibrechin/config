function reminder
	if count $argv > /dev/null
		set source_image (gsettings get org.cinnamon.desktop.background picture-uri | sed "s/file:\/\///g" | sed "s/'//g")
		echo $source_image > /tmp/wallpaper

		set height 500
		set output_image $argv[1]
		set reminders $argv[2..-1]
		for reminder in $reminders
			convert -weight bold -pointsize 200 -fill white -draw "text 300,$height '$reminder'" $source_image $output_image
			set height (math "$height+250")
			set source_image $output_image
		end
		gsettings set org.cinnamon.desktop.background picture-uri file://$output_image
	else
		if test -e /tmp/wallpaper
			gsettings set org.cinnamon.desktop.background picture-uri file://(cat /tmp/wallpaper)
		end
	end
end
