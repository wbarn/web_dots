### Cirro Dot base .bash_profile

# Loading texting
cirrodot="Loading cirrodot:"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# PS1 Prompt with git autocomplete and git state
if [ -f $HOME/cirro_dot/git_bash ]; then
   source $HOME/cirro_dot/git_bash
   cirrodot="$cirrodot gitprompt"
fi

# Homebrew path
export PATH="/usr/local/bin:$PATH"

# rbenv
if [ -f $HOME/cirro_dot/rbenv ]; then
   source $HOME/cirro_dot/rbenv
   cirrodot="$cirrodot rbenv"
fi

# Postgres
if [ -f $HOME/cirro_dot/postgres ]; then
   source $HOME/cirro_dot/postgres
   cirrodot="$cirrodot postgres"
fi

# AWS
# See sample .awsconfig.txt
if [ -f $HOME/.awsconfig.txt ]; then
   export AWS_CONFIG_FILE=$HOME/.awsconfig.txt
   cirrodot="$cirrodot AWS"
fi

# GRUNT
if [ -f $HOME/cirro_dot/grunt ]; then
   source $HOME/cirro_dot/grunt
   cirrodot="$cirrodot grunt"
fi

# ALIASES
if [ -f $HOME/cirro_dot/aliases ]; then
   source $HOME/cirro_dot/aliases
   cirrodot="$cirrodot aliases"
fi

# print cirrdot loading text
echo $cirrodot

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
