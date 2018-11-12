stty -ixon

function sf {
    ignore="site-packages|virtualenv\.*/|target/|*.pyc|venv/"
    local FZF_DEFAULT_OPTS="-m --preview 'cat {}' --preview-window up:40%"
    if [ "$@" ]; then
        args="+/$*"
        file=$(ag -l "$@" | grep -Ev "$ignore" | FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS" fzf | tr '\n' ' ');
    else
        args=''
        file=$(FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS" fzf | tr '\n' ' ');
    fi
    if [ "$file" ]; then
        vim $args $file;
    fi
}

function sfr {
    REPOS_DIR=$HOME/pg
    local FZF_DEFAULT_OPTS="--preview 'cd $REPOS_DIR/{}; git status; echo; git log -n 20 --oneline --graph --color=always' --preview-window up:70%"
    REPOS=$(find $REPOS_DIR -type d -exec test -d '{}/.git' \; -prune -print;)
    SELECTED_REPO=$(echo "$REPOS" | sed "s,$REPOS_DIR/,," | fzf -q ${@:-''})
    if [[ -n $SELECTED_REPO ]]; then
        cd $REPOS_DIR/$SELECTED_REPO
    fi
}

function cb {
    git checkout $(git branch | fzf -q ${@:-''})
}

function tohadoop {
    ssh -i /nail/etc/EMR.pem.dev hadoop@"$@"
}

function pyed {
    vim $@/*.py
}

alias plsvenv='source ~/venv/bin/activate'
alias active='source virtualenv_*/bin/activate'
alias s3size="python -c 'import sys; print(sum([int(x.split()[-2]) for x in sys.stdin if x.strip()]))'"
alias gdiff="git diff --color | less -R"
export PATH=$PATH:~/bin

bind 'set match-hidden-files off'

alias vim=vim8
alias tmux=tmux2
