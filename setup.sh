function create_symlinks {
  ln -s ~/.dotfiles/.zshrc ~/.zshrc
  ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
}

create_symlinks
