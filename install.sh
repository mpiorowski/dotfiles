# install
yay

yay brave-bin

yay fish # 18
chsh -s /usr/bin/fish

yay kitty
yay tdrop
yay sxhkd

yay  docker
sudo usermod -aG docker $USER
yay  docker-compose

sudo systemctl start docker.service
sudo systemctl enable docker.service

yay slack-desktop
yay visual-studio-code-bin
yay steam
yay github-cli
yay lutris

# github
ln -s -f ~/projects/dotfiles/.gitconfig ~/.gitconfig

# nvim
ln -s -f ~/projects/dotfiles/nvim ~/.config/nvim

# kitty
ln -s -f ~/projects/dotfiles/kitty ~/.config/kitty

# tdrop + sxhkd
ln -s -f ~/projects/dotfiles/sxhkd ~/.config/sxhkd
ln -s -f ~/projects/dotfiles/autostart/sxhkd.desktop ~/.config/autostart/sxhkd.desktop

# ssh
mkdir ~/.ssh
ln -s -f ~/projects/dotfiles/ssh/config ~/.ssh/config

# fish
ln -s -f ~/projects/dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -s -f ~/projects/dotfiles/fish/functions ~/.config/fish/functions
