#!/bin/bash
cd ..

# zsh files
if test -f ".zshrc"; then
	rm ".zshrc"
fi
ln -s .dotfiles/zsh/.zshrc .
# source .zshrc

# zsh theme
cd .oh-my-zsh/themes
if test -f "SH_custom_robbyrussell.zsh-theme"; then
	rm "SH_custom_robbyrussell.zsh-theme"
fi
ln -s ../../.dotfiles/zsh/SH_custom_robbyrussell.zsh-theme .

# bin files
cd ../..
if [ -d "bin" ]; then
	rm -r "bin"
fi
ln -s .dotfiles/bin .

# ssh files
cd .ssh
if test -f "config"; then
	rm "config"
fi
ln -s ../.dotfiles/ssh/config .

# git configs
git config --global alias.st status
git config --global alias.fe fetch
git config --global alias.pu pull
