# github
ln -s -f ~/projects/dotfiles/.gitconfig ~/.gitconfig
ln -s -f ~/projects/dotfiles/ssh/config ~/.ssh/config
cp ~/projects/dotfiles/ssh/priv ~/.ssh/priv
cp ~/projects/dotfiles/ssh/priv.pub ~/.ssh/priv.pub
chmod 600 ~/.ssh/priv
chmod 600 ~/.ssh/priv.pub

# nvim
ln -s -f ~/projects/dotfiles/nvim ~/.config

# kitty
ln -s -f ~/projects/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf

# tdrop + sxhkd
ln -s -f ~/projects/dotfiles/sxhkd ~/.config
ln -s -f ~/projects/dotfiles/autostart/sxhkd.desktop ~/.config/autostart/sxhkd.desktop


# fish
ln -s -f ~/projects/dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -s -f ~/projects/dotfiles/fish/functions/gitup.fish ~/.config/fish/functions/gitup.fish
ln -s -f ~/projects/dotfiles/fish/functions/vi.fish ~/.config/fish/functions/vi.fish
