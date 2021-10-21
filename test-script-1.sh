#!/usr/bin/env zsh -f



# Add .aliases to .zshrc
if ! grep -Fxq "source ~/.aliases" $HOME/.zshrc; then
  echo "source ~/.aliases" >> $HOME/.zshrc
fi
