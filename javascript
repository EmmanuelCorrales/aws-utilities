#!/bin/bash
echo "" >> ~/.bash_profile
echo "# Node configurations." >> ~/.bash_profile
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

# Install the LTS version
nvm install --lts
node -v

# Install typescript globally.
echo "Installing typescript..."
npm -g install typescript
