#!/bin/bash

if ! which node > /dev/null 2>&1; then
  echo "install node..."
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
fi

