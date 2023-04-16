#!/usr/bin/env bash

window_width="@tmux-tenere-width"
window_height="@tmux-tenere-height"

if [ ! -n "$window_width" ]; then
  window_width="80%"
fi

if [ ! -n "$window_height" ]; then
  window_height="60%"
fi


tmux bind-key C-t run-shell "tmux popup -w $window_width -h $window_height -E 'tenere'"
