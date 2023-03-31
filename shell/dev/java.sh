
if ! which java > /dev/null 2>&1; then
  echo "install java..."

  sudo apt install -y openjdk-17-jdk maven 

  sudo snap install --classic gradle

  echo 'export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64' >> ~/.bashrc
  echo 'export PATH=$PATH:$JAVA_HOME/bin' >> ~/.bashrc
fi
