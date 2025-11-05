################################################################################
############  AutoVenv for Fish Shell v2019.03.28 by @TimothyBrown  ############
################################################################################
function _find_venv
    # We start by splitting our CWD path into individual elements and iterating over each element.
    # If our CWD is `/opt/my/hovercraft/eels` we split it into a variable containing 4 entries:
    # `opt`, `my`, `hovercraft` and `eels`. We then build back up the path by iterating over the list
    # and adding each element to the previous one. (We start with `/opt`, then `/opt/my` and so on.)
    # During each run through the loop we test for a sub-directory/file called `bin/activate.fish`. If a
    # venv is found we go ahead and break out of the loop, otherwise continue. We go through all of this
    # instead of just checking the CWD to handle cases where the user moves into a sub-directory of the venv.
    for _dir in (string split -n '/' "$PWD")
        set _tree "$_tree/$_dir"
        for _venv in 'venv' '.venv'
            if test -e "$_tree/$_venv/bin/activate.fish"
                echo "$_tree/$_venv/bin/activate.fish"
                return
            end
        end
    end
end

function autovenv --on-variable PWD
    # If we're *not* in an active venv and the venv source dir exists we activate it and return.
    set _source "$(_find_venv)"
    if test -z "$VIRTUAL_ENV" -a -e "$_source"
        source "$_source"
        # Next we check to see if we're already in an active venv. If so we proceed with further tests.
    else if test -n "$VIRTUAL_ENV"
        # Check to see if our CWD is inside the venv directory.
        set _dir (string match -n "$VIRTUAL_ENV*" "$PWD")
        # If we're no longer inside the venv dirctory deactivate it and return.
        if test -z "$_dir" -a ! -e "$_source"
            deactivate
            # If we've switched into a different venv directory, deactivate the old and activate the new.
        else if test -z "$_dir" -a -e "$_source"
            deactivate
            source "$_source"
        end
    end
end
################################################################################
