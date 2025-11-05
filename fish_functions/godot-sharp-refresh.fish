function godot-sharp-refresh
    set -l godot_bin (get-latest-godot -m)
    $godot_bin --headless --generate-mono-glue ~/code/godot/modules/mono/glue
    ~/code/godot/modules/mono/build_scripts/build_assemblies.py --godot-output-dir ~/code/godot/bin --push-nupkgs-local ~/nuget_local/
end
