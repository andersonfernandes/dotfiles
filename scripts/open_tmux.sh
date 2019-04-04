#!/bin/bash

if [ "$1" == "stant-web" ]; then
  tmux new-session -s stant-web -d -c ~/Workspace/ruby/stant -n nvim
  tmux new-window -t stant-web -n console -c ~/Workspace/ruby/stant
  tmux new-window -t stant-web -n server -c ~/Workspace/ruby/stant
  tmux new-window -t stant-web -n assets -c ~/Workspace/ruby/stant
  tmux new-window -t stant-web -n elixir-server -c ~/Workspace/elixir/stant-elixir-occurrences

  tmux send-keys -t stant-web:nvim "nvim" Enter
  tmux send-keys -t stant-web:assets "yarn && yarn dev" Enter
  tmux send-keys -t stant-web:server "rails server" Enter
  tmux send-keys -t stant-web:elixir-server "mix phx.server" Enter

  tmux attach -t stant-web
else
  echo "The tmux session $1 does not exists"
fi


