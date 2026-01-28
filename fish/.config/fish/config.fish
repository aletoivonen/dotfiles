source /usr/share/cachyos-fish-config/cachyos-config.fish

# set -U EDITOR nvim

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

zoxide init fish | source

abbr --add cd z

fish_ssh_agent

set -gx EDITOR nvim
set -gx GTK_THEME PurPurNight-GTK
set -gx DOTNET_ROOT /home/aleksi/.dotnet/

export FZF_CTRL_T_OPTS="--bind 'ctrl-p:toggle-preview' --preview-window=right:60%:hidden --preview 'bat --color=always --style=numbers,changes,header {}'"

