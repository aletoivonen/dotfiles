function addkeys --description 'add ssh keys'
    fish_ssh_agent
    ssh-add /home/shared/.ssh/omagithub.rsa
    ssh-add /home/shared/.ssh/zgithub.rsa
    ssh-add /home/shared/.ssh/worksourcetree.rsa
    ssh-add /home/shared/.ssh/zgithub_2026
  end
