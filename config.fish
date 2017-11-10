alias vi vim
set PATH ~/bin ~/go/bin $PATH
set GOPATH /home/adam/go

export STEAM_FRAME_FORCE_CLOSE=1

set -x EDITOR /usr/bin/vim

eval (python -m virtualfish auto_activation)

if [ -n "$DISPLAY" ]
    exit 0
end

if [ `(ps ax | grep -v grep | grep -i xorg)` ]
    exit 0
end

startx
