function godot
    set -l bin (get-latest-godot)
    echo "Using $bin"
    $bin $argv
end
