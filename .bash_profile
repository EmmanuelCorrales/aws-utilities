# Load aliases form .bash_aliases.
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

export PS1='\[\e[32m\]#>\[\e[m\] '
