#!/bin/sh

NAME=${1}
NUM=${2:-2}

if [ $# -eq 0 ]; then
	echo "Missing argument. Pass in string as name to start a session"
	exit 1
fi

tmux new-session -d -s $1
if [ $NUM -eq 1 ]; then
	:
elif [ $NUM -eq 2 ]; then
	tmux split-window -h
elif [ $NUM -eq 3 ]; then
	tmux split-window -h
        tmux split-window -v
elif [ $NUM -eq 4 ]; then
	tmux split-window -p 66
       	tmux split-window -d
	tmux split-window -h	
else
	echo "Cannot handle $NUM windows...choose 2, 3, or 4"
	exit 1
fi
tmux attach-session -d -t $1
