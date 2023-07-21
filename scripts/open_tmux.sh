#!/bin/bash  

if [ "$#" -eq 0 ]; then
  echo "No arguments supplied! You need to supply the session name and the woekspace path"
  exit 1
fi

session_name=$1
workspace=$2

if [ -z "$workspace" ]
then
  workspace="."
fi

tmux has-session -t $session_name 2>/dev/null
if [ $? != 0 ]; then
  tmux new -s $session_name -d -c $workspace
fi

tmux attach-session -t $session_name
