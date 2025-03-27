#!/bin/bash

if [ -f "/home/user/.zshrc" ]; then
    echo "ZSH already configured"
else
    cat << 'EOF' > /home/user/.zshrc
export ZSH=/opt/workstation/zsh
export HISTFILE=$ZSH/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

source /opt/workstation/zsh/themes/spaceship/spaceship.zsh-theme
source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=($ZSH/plugins/zsh-completions/src $fpath)
EOF
fi

chown -R user:user /home/user