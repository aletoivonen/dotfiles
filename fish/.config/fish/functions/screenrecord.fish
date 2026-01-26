function screenrecord
	wf-recorder -g "$(slurp)" -f "/home/aleksi/Videos/Screencap/$(date +%s).mp4"
end
