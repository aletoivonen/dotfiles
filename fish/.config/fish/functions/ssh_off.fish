function ssh_off
	sudo systemctl stop sshd
	sudo systemctl disable sshd
	sudo ufw deny 22/tcp
end
