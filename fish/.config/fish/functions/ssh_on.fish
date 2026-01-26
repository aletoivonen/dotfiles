function ssh_on
	sudo systemctl start sshd
	sudo systemctl enable sshd
	sudo ufw allow 22/tcp
end
