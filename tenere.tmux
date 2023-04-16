#!/usr/bin/env bash
#
# Define the plugin name
PLUGIN_NAME="tenere"

# Get the width and height from the tmux options
window_width=$(tmux show-option -gqv "@tmux-tenere-width")
window_height=$(tmux show-option -gqv "@tmux-tenere-height")

if [ ! -n "$window_width" ]; then
  window_width="80%"
fi

if [ ! -n "$window_height" ]; then
  window_height="60%"
fi

tmux bind-key C-t run-shell "tmux popup -w $window_width -h $window_height -E 'tenere'"

