#!/usr/bin/env bash

tmux_tenere_width="@tmux-tenere-width"
tmux_tenere_height="@tmux-tenere-height"

if [ ! -n "$tmux_tenere_width" ]; then
  tmux_tenere_width="80%"
fi

if [ ! -n "$tmux_tenere_height" ]; then
  tmux_tenere_height="60%"
fi


bind-key C-t display-popup -w $tmux_tenere_width -h $tmux_tenere_height -E "Tenere" "tenere"
