function get-latest-godot
    argparse m/mono -- $argv
    or return

    set -f godot_bin ~/code/godot/bin
    if set -q _flag_mono
        set -f latest (ls -t $godot_bin | grep godot | grep mono | head -n 1)
    else
        set -f latest (ls -t $godot_bin | grep godot | head -n 1)
    end
    echo "$godot_bin/$latest"
end

