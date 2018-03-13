[ -n "$PS1" ] && source ~/.bash_profile


# [ -f ~/.fzf.bash ] && source ~/.fzf.bash
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi
[ -f /opt/hamurai/env.sh ] && source /opt/hamurai/env.sh
