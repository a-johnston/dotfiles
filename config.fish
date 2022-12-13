alias vi vim

export STEAM_FRAME_FORCE_CLOSE=1

set -x TERM xterm-256color-italic
set -x EDITOR /usr/bin/vim

if [ -n "$DISPLAY" ]
    exit 0
end

if [ `(ps ax | grep -v grep | grep -i xorg)` ]
    exit 0
end

startx
