#!/bin/bash

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Daily
brew cask install 1password

# Dev
brew cask install visual-studio-code-insiders
brew cask install iterm2
brew cask install imageoptim
brew cask install macdown
brew cask install xquartz
brew cask install android-studio
brew cask install insomnia
brew cask install react-native-debugger

# browsers
brew cask install google-chrome-canary
brew cask install google-chrome

# less often
brew cask install transmission
brew cask install dropbox
brew cask install spectacle
brew cask install licecap
brew cask install spotify

echo "Running brew cask caveats."

# cleanup
brew cleanup
