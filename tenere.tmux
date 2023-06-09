#!/usr/bin/env bash
#
# Define the plugin name
PLUGIN_NAME="tenere"

# Get the width and height from the tmux options
key_binding=$(tmux show-option -gqv "@tmux-tenere-key-binding")
window_width=$(tmux show-option -gqv "@tmux-tenere-width")
window_height=$(tmux show-option -gqv "@tmux-tenere-height")

if [ ! -n "$key_binding" ]; then
  key_binding="t"
fi

if [ ! -n "$window_width" ]; then
  window_width="80%"
fi

if [ ! -n "$window_height" ]; then
  window_height="80%"
fi

tmux bind $key_binding run-shell "tmux popup -w $window_width -h $window_height -E 'tenere'"
