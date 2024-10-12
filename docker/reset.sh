apt-get update git

# set hosts
# vi /etc/hosts

# setup starship
function setupStarship() {

apt-get install -y curl wget jq

version=$(curl "https://api.github.com/repos/starship/starship/releases/latest" | jq -r '.tag_name')

wget https://mirror.ghproxy.com/https://github.com/starship/starship/releases/download/$version/starship-x86_64-unknown-linux-gnu.tar.gz

tar -C /usr/local/bin -xzf starship-x86_64-unknown-linux-gnu.tar.gz starship

rm starship-x86_64-unknown-linux-gnu.tar.gz

echo 'eval "$(starship init bash)"' >> ~/.bashrc
}

# setup docker
function setupDocker() {
  apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common

curl -fsSL https://mirrors.ustc.edu.cn/docker-ce/linux/debian/gpg | sudo apt-key add -

add-apt-repository \
   "deb [arch=amd64] https://mirrors.ustc.edu.cn/docker-ce/linux/debian \
  $(lsb_release -cs) \
  stable"

apt-get update

apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose
}

# setup nodejs

function setupNodejs() {
  wget https://npmmirror.com/mirrors/node/v22.3.0/node-v22.3.0-linux-x64.tar.xz
  mkdir /usr/local/nodejs
  tar -C /usr/local/nodejs -xvf node-v22.3.0-linux-x64.tar.xz
  echo 'export PATH=$PATH:/usr/local/nodejs/node-v22.3.0-linux-x64/bin' >> ~/.bashrc
  rm node-v22.3.0-linux-x64.tar.xz
  source ~/.bashrc
}

# set authorized_keys
echo ./authorized_keys > ~/.ssh/authorized_keys