sudo apt-get upgrade
sudo apt-get update

sudo apt-get install kitty
sudo apt-get install golang

curl -fsSL https://deb.nodesource.com/setup_19.x | sudo -E bash - &&\
sudo apt-get install nodejs
sudo apt-get install npm

# fish
sudo apt-get install fish
chsh -s /usr/bin/fish

# nvim
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
sudo apt-get install fd-find
sudo apt-get install ripgrep

# docker
sudo apt-get install docker
sudo docker run hello-world
sudo usermod -aG docker $USER
sudo apt-get install docker-compose


