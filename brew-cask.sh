#!/bin/bash

# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`

" Installing native apps using \`brew cask\`."

# Install native apps
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Daily
brew cask install lastpass
brew cask install skype
brew cask install adobe-creative-cloud
brew cask install limechat

# Dev
brew cask install visual-studio-code
brew cask install iterm2-beta
brew cask install cyberduck
brew cask install virtualbox
brew cask install vagrant
brew cask install imageoptim
brew cask install macdown
brew cask install mysqlworkbench
brew cask insatll sequel-pro
brew cask install xquartz

# browsers
brew cask install google-chrome-canary
brew cask install google-chrome
brew cask install firefox
brew cask install firefox-nightly
brew cask install webkit-nightly
brew cask install safari-technology-preview
brew cask install chromium
brew cask install opera

# less often
brew cask install flash
brew cask install vlc
brew cask install transmission
brew cask install dropbox
brew cask install gpgtools
brew cask install macdown
brew cask install spectacle
brew cask install whatsapp
brew cask install licecap

echo "Running brew cask caveats."

# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*
