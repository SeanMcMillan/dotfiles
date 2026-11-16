#!/bin/bash

input=$(cat)

dir=$(echo "$input" | jq -r '.workspace.current_dir // .cwd // empty')
[ -z "$dir" ] && dir="$PWD"
display_dir="${dir/#$HOME/~}"

branch=$(git -C "$dir" --no-optional-locks branch --show-current 2>/dev/null)

remaining=$(echo "$input" | jq -r '.context_window.remaining_percentage // empty')

output="$display_dir"
[ -n "$branch" ] && output="$output ($branch)"
printf '\033[2m%s\033[0m' "$output"

if [ -n "$remaining" ]; then
  ctx=$(printf '%.0f' "$remaining")
  if [ "$ctx" -gt 50 ]; then
    color='32'
  elif [ "$ctx" -gt 30 ]; then
    color='33'
  else
    color='1;31'
  fi
  printf '\033[2m | \033[0m\033[%smCtx: %s%% left\033[0m' "$color" "$ctx"
fi
