#!/usr/bin/env bash

# check if ~/bin/ exist, if not create one
if test -d ~/bin/
then
    echo "Great, looks like you have ~/bin all setup already."
else
    mkdir ~/bin
    echo "Father...I crave Cheddar"
fi

# download script to the bin directory under the home diretory
curl -o ~/bin/odgenerator https://raw.githubusercontent.com/540376482yzb/react-express-back/master/odgenerator

# adds script to $HOME path
echo "export PATH="$HOME/bin:$PATH"" >> ~/.bash_profile

# make the script executable
chmod +x ~/bin/odgenerator

# some helpful message
echo 'to generate a new express app, simply run `odgenerator`'

exit 0