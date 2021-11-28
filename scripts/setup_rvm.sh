#! /bin/bash

if [[ -s "$HOME/.rvm/scripts/rvm" ]] && [[ -n "${TMUX}" ]]; then
  cd "."

  tmux setenv GEM_HOME $GEM_HOME
  tmux setenv -g GEM_HOME $GEM_HOME
  tmux setenv GEM_PATH $GEM_PATH
  tmux setenv -g GEM_PATH $GEM_PATH
fi
