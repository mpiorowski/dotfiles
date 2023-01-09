# github
ln -s -f ~/projects/dotfiles/.gitconfig ~/.gitconfig

# kitty
ln -s -f ~/projects/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf

# tdrop + sxhkd
mkdir /home/mat/.config/sxhkd/
ln -s -f ~/projects/dotfiles/sxhkd/sxhkdrc ~/.config/sxhkd/sxhkdrc
mkdir /home/mat/.config/autostart/
ln -s -f ~/projects/dotfiles/autostart/sxhkd.desktop ~/.config/autostart/sxhkd.desktop

# fish
ln -s -f ~/projects/dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -s -f ~/projects/dotfiles/fish/functions/gitup.fish ~/.config/fish/functions/gitup.fish
ln -s -f ~/projects/dotfiles/fish/functions/vi.fish ~/.config/fish/functions/vi.fish
