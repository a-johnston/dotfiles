function godot-mono
    set -l bin (get-latest-godot -m)
    echo "Using $bin"
    $bin $argv
end
