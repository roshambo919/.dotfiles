rm .zshrc
ln -s .dotfiles/zsh/.zshrc .
cd .oh-my-zsh/themes
ln -s ../../.dotfiles/zsh/SH_custom_robbyrussell.zsh-theme .
cd ../..
ln -s .dotfiles/bin .
cd .ssh
ln -s ../.dotfiles/ssh/config .
