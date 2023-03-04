#/bin/bash

if ! which clang-15 > /dev/null 2>&1; then
  echo "install clang..."

  wget https://apt.llvm.org/llvm.sh
  chmod +x llvm.sh
  sudo ./llvm.sh 15 all
  rm llvm.sh
fi
