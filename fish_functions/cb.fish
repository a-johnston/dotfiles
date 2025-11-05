function cb --description "Change git branches"
    if fish_git_prompt
        if set -q TMUX
            git checkout (git branch | fzf --tmux center -q "$argv" | string trim)
        else
            git checkout (git branch | fzf --height ~50% -q "$argv" | string trim)
        end
    else
        echo "Not currently in a git repository"
    end
end
