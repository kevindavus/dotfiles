[ -n "$PS1" ] && source ~/.bash_profile


# [ -f ~/.fzf.bash ] && source ~/.fzf.bash
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
