### WEB Dot base .bash_profile

# Loading texting
webdot="Loading webdot:"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# PS1 Prompt with git autocomplete and git state
if [ -f $HOME/web_dots/git_bash ]; then
   source $HOME/web_dots/git_bash
   webdot="$webdot gitprompt"
fi

# Homebrew paths
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"

# rbenv
if [ -f $HOME/web_dots/rbenv ]; then
   source $HOME/web_dots/rbenv
   webdot="$webdot rbenv"
fi

# Postgres
if [ -f $HOME/web_dots/postgres ]; then
   source $HOME/web_dots/postgres
   webdot="$webdot postgres"
fi

# AWS
# See sample .awsconfig.txt
if [ -f $HOME/.awsconfig.txt ]; then
   export AWS_CONFIG_FILE=$HOME/.awsconfig.txt
   webdot="$webdot AWS"
fi

# GRUNT
if [ -f $HOME/web_dots/grunt ]; then
   source $HOME/web_dots/grunt
   webdot="$webdot grunt"
fi

# ALIASES
if [ -f $HOME/web_dots/aliases ]; then
   source $HOME/web_dots/aliases
   webdot="$webdot aliases"
fi

# print cirrdot loading text
echo $webdot

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
