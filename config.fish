if status is-interactive
    alias vi vim
    set -x TERM xterm-256color
    set -x EDITOR /usr/bin/vim
    set --erase VIRTUAL_ENV_DISABLE_PROMPT
end

if type -q fzf
    export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git'"
    fzf --fish | source
end

if type -q devbox
    devbox completion fish | source
    alias box devbox
end

autovenv

alias gs "git status"
alias cm "git commit -a -m"
alias ane "git commit -a --amend --no-edit"
alias ae "git commit -a --amend"
