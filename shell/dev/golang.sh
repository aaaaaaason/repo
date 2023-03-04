#/bin/bash

GO_FILE=go1.20.1.linux-amd64.tar.gz

if ! which go > /dev/null 2>&1; then
  echo "install go..."

  wget https://go.dev/dl/${GO_FILE}

  sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf ${GO_FILE}
  rm ${GO_FILE}

  echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc

  source ~/.bashrc
fi

