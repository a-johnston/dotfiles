if status is-interactive
    alias vi vim
    set -x TERM xterm-256color-italic
    set -x EDITOR /usr/bin/vim
    set --erase VIRTUAL_ENV_DISABLE_PROMPT
end

if test -d /opt/homebrew
    eval "$(/opt/homebrew/bin/brew shellenv)"

    export HOMEBREW_NO_ENV_HINTS=1
end

export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git'"

fzf --fish | source

autovenv

alias ane "git commit -a --amend --no-edit"
alias ae "git commit -a --amend"
