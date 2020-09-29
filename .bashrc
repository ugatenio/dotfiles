# Udi Gtaenio's .bashrc

# =============================
#            DRIVENETS
# =============================
source ~/.bashrc.drivenets

# =============================
#            alias
# =============================

# genreral alias
alias ll='ls -lah'

# git alias
alias gs='git status'
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gc-='git checkout -'
alias gitprune='git remote prune origin'
alias gp='git pull ; gitprune'

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# tmux
alias tmux='tmux -2'

