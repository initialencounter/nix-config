apt-get update

# set hosts
# vi /etc/hosts

# setup fish

function setupFish() {
  apt-get install -y curl
  curl -o fish_4.0.2-2_amd64.deb -L https://download.opensuse.org/repositories/shells:/fish:/release:/4/Debian_11/amd64/fish_4.0.2-2_amd64.deb
  dpkg -i fish_4.0.2-2_amd64.deb
  rm fish_4.0.2-2_amd64.deb
  chsh /bin/fish
}

# setup starship
function setupStarship() {

apt-get install -y curl jq

version=$(curl "https://api.github.com/repos/starship/starship/releases/latest" | jq -r '.tag_name')

curl -o starship.tar.gz -L https://github.com/starship/starship/releases/download/$version/starship-x86_64-unknown-linux-gnu.tar.gz

tar -C /usr/local/bin -xzf starship.tar.gz starship

rm starship.tar.gz

echo 'starship init fish | source' >> ~/.config/fish/config.fish
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

# set authorized_keys
cat ./authorized_keys > ~/.ssh/authorized_keys