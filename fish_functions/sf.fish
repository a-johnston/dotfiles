function sf --description "Search files containing input string"
    set -l files ""
    if set -q TMUX
        if count $argv > /dev/null
            set files (rg -l "$argv" | fzf --tmux center -m | string trim)
        else
            set files (fzf --tmux center -m | string trim)
        end
    else
        if count $argv > /dev/null
            set files (rg -l "$argv" | fzf --height ~50% -m | string trim)
        else
            set files (fzf --height ~50% -m | string trim)
        end
    end
    if count $files > /dev/null
        $EDITOR $files
    end
end
