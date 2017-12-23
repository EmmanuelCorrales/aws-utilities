brew install rbenv ruby-build

# Add rbenv to bash so that it loads every time you open a terminal
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile

# Install Ruby.
rbenv install 2.4.3
rbenv global 2.4.3
ruby -v

# Install rails.
gem install rails -v 5.1.4

# Install sqlite 3.
brew install sqlite3

# Install MySQL.
brew install mysql
brew services start mysql

# Install PostgreSQL.
brew install postgresql
brew services start postgresql
