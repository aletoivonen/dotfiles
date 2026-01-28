function addkeys --description 'add ssh keys'
  #!/bin/bash  

  fish_ssh_agent

    echo $HOME

    for key in $HOME/.ssh/*.rsa
      ssh-add $key
      echo added key $key
    end
  end
