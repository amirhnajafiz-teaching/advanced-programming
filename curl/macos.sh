#!bin/bash

# check to see if you have brew installed already
brew -v

# if you donot have brew installed install brew first
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null

# once brew is installed let's install curl
brew install curl
