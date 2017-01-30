# copy paste this file in bit by bit.
# don't run it.
  echo "do not run this script in one go. hit ctrl-c NOW"
  read -n 1


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

# install homebrew
./brew.sh
./brew-cask.sh

# Start MySQL
brew services start mysql

# Secure MySQL
mysql_secure_installation

# Install zsh theme
./fonts/install.sh
curl https://raw.githubusercontent.com/wesbos/Cobalt2-iterm/master/cobalt2.zsh-theme > ~/.oh-my-zsh/themes/cobalt2.zsh-theme

# Set zsh as the default shell
chsh -s $(which zsh)

# install rvm with latest stable and rails
curl -L https://get.rvm.io | bash -s stable --ruby

# Set some osx defaults
sh .osx

# Lets add the dotfiles
sh bootstrap.sh
