#!/bin/bash

if [[ ! -d ~/.tmux/plugins/tpm ]]; then
  echo "git clone tmux plugin manager..."
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

  cat << EOF >> ~/.tmux.conf
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'tmux-plugins/tmux-resurrect'

unbind-key C-b

set-option -g prefix C-a

bind-key C-a send-prefix

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run -b '~/.tmux/plugins/tpm/tpm'

EOF
fi


