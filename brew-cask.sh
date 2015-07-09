#!/bin/bash

# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`

# Install native apps
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# Daily
brew cask install lastpass
brew cask install skype
brew cask install toggldesktop

# Dev
brew cask install iterm2
brew cask install sublime-text
brew cask install rubymine
brew cask install cyberduck
brew cask install vagrant
brew cask install imageoptim
brew cask install macdown
brew cask install mysqlworkbench

# browsers
brew cask install google-chrome-canary
brew cask install firefox-nightly
brew cask install webkit-nightly
brew cask install chromium

# less often
brew cask install vlc
brew cask install transmission
