#!/bin/bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash && export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 14 && wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && sudo dpkg -i packages-microsoft-prod.deb && sudo apt-get update && sudo apt-get install -y apt-transport-https && sudo apt-get update && sudo apt-get install -y dotnet-sdk-3.1 && wget https://github.com/xjarvik/misc/raw/main/flatc -P flatbuffers && chmod u+x flatbuffers/flatc && echo "export PATH=$PATH:$(pwd)/flatbuffers" >> ~/.bashrc && source ~/.bashrc
