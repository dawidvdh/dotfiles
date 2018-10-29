#!/bin/bash

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Daily
brew cask install 1password
brew cask install adobe-creative-cloud

# Dev
brew cask install visual-studio-code-insiders
brew cask install iterm2
brew cask install imageoptim
brew cask install macdown
brew cask install xquartz
Brew cash install robo-3t
Brew cask install android-studio

# browsers
brew cask install google-chrome-canary
brew cask install google-chrome
brew cask install firefox
brew cask install firefoxnightly
brew cask install webkit-nightly
brew cask install safari-technology-preview
brew cask install chromium
brew cask install opera

# less often
brew cask install vlc
brew cask install transmission
brew cask install dropbox
brew cask install gpgtools
brew cask install spectacle
brew cask install whatsapp
brew cask install licecap

echo "Running brew cask caveats."

# cleanup
brew cleanup
