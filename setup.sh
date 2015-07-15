# copy paste this file in bit by bit.
# don't run it.
  echo "do not run this script in one go. hit ctrl-c NOW"
  read -n 1

###  backup old machine's key items
mkdir -p ~/migration/home
cd ~/migration

# what is worth reinstalling?
brew leaves      		> brew-list.txt    # all top-level brew installs
brew cask list 			> cask-list.txt
npm list -g --depth=0 	> npm-g-list.txt


# then compare brew-list to what's in `brew.sh`
#   comm <(sort brew-list.txt) <(sort brew.sh-cleaned-up)

# let's hold on to these

cp ~/.extra ~/migration/home
cp ~/.z ~/migration/home

cp -R ~/.ssh ~/migration/home
cp -R ~/.gnupg ~/migration/home

cp /Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist ~/migration  # wifi

cp ~/Library/Preferences/net.limechat.LimeChat.plist ~/migration

cp -R ~/Library/Services ~/migration # automator stuff

cp -R ~/Documents ~/migration

cp ~/.bash_history ~/migration # back it up for fun?

cp ~/.gitconfig.local ~/migration

cp ~/.z ~/migration # z history file.

# sublime text settings
cp "~/Library/Application Support/Sublime Text 3/Packages" ~/migration
### end of old machine backup

### XCode Command Line Tools
#      thx  https://github.com/alrra/dotfiles/blob/c2da74cc333/os/os_x/install_applications.sh#L39

if [ $(xcode-select -p &> /dev/null; printf $?) -ne 0 ]; then
    xcode-select --install &> /dev/null
    # Wait until the XCode Command Line Tools are installed
    while [ $(xcode-select -p &> /dev/null; printf $?) -ne 0 ]; do
        sleep 5
    done
fi
# Prompt user to agree to the terms of the Xcode license  github.com/alrra/dotfiles/issues/10
sudo xcodebuild -license
### XCode Command Line Tools

#install homebrew
./brew.sh
./brew-cask.sh

# install rvm with latest stable and rails
curl -L https://get.rvm.io | bash -s stable --ruby

# Set some osx defaults
sh .osx

# Lets add the dotfiles
sh bootstrap.sh
