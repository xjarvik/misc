# Installs Node.js 14, .NET Core 3.1 and the FlatBuffers schema compiler. Tested on Ubuntu Server 20.04.
# Shorter version in comment below this line.
# wget https://raw.githubusercontent.com/xjarvik/misc/main/install.sh && source install.sh && rm install.sh

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash && source ~/.bashrc && nvm install 14 && wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && sudo dpkg -i packages-microsoft-prod.deb && sudo apt-get update && sudo apt-get install -y apt-transport-https && sudo apt-get update && sudo apt-get install -y dotnet-sdk-3.1 && wget https://github.com/xjarvik/misc/raw/main/flatc -P flatbuffers && chmod u+x flatbuffers/flatc && echo "export PATH=$PATH:$(pwd)/flatbuffers" >> ~/.bashrc && source ~/.bashrc
