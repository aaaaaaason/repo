#!/bin/bash

if [[ ! -d ~/.tmux/plugins/tpm ]]; then
  echo "git clone tmux plugin manager..."
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

  cat <<EOF >~/.tmux.conf
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'tmux-plugins/tmux-continuum'
set -g @plugin 'tmux-plugins/tmux-open'
set -g @plugin 'tmux-plugins/tmux-copycat'
set -g @plugin 'tmux-plugins/tmux-yank'
set -g @plugin 'tmux-plugins/tmux-pain-control'
set -g @plugin 'christoomey/vim-tmux-navigator'

unbind-key C-b

set-option -g prefix C-a

bind-key C-a send-prefix

set -g mouse on

set-window-option -g mode-keys vi

# Use v to trigger selection
bind-key -T copy-mode-vi v send-keys -X begin-selection

# Use y to yank current selection
bind-key -T copy-mode-vi y send-keys -X copy-selection-and-cancel

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run -b '~/.tmux/plugins/tpm/tpm'

EOF
fi
