#!/usr/bin/env bash

#!/usr/bin/env bash


echo "
\033[1;34m
Installing\033[0m \033[1;32moh-my-zsh...
\033[0m
"
sleep 2

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Change oh-my-zsh theme to bira
if ! grep -Fxq "robbyrussell" $HOME/.zshrc; then
  sed -i "" "s|robbyrussell|bira|" $HOME/.zshrc
fi

# Add 'neofetch'to .zshrc
if ! grep -Fxq "neofetch" $HOME/.zshrc; then
  echo "neofetch" >> $HOME/.zshrc
fi

# Add .aliases to .zshrc
if ! grep -Fxq "source $HOME/.aliases" $HOME/.zshrc; then
  echo "source ~/.aliases" >> $HOME/.zshrc
fi

# Copy to Home folder
cp -f .aliases .hushlogin $HOME

# Load these files
source $HOME/.aliases
source $HOME/.hushlogin
source $HOME/.zshrc
