#!/bin/bash
echo "" >> ~/.bash_profile
echo "# Node configurations." >> ~/.bash_profile
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

# Load NVM_DIR for installation of other tools.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Install the LTS version
nvm install --lts
node -v

# Install typescript globally.
echo "Installing typescript..."
npm -g install typescript

# Install create react app.
echo "Installing create-react-app..."
npm install -g create-react-app

# Install Yarn.
echo "Installing Yarn..."
brew install yarn
yarn -v
