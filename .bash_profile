# Profiles
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"
source ~/.private

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Shut up about zsh already
export BASH_SILENCE_DEPRECATION_WARNING=1

# bash-it
export BASH_IT="$HOME/bash-it"
export BASH_IT_THEME='bobby'
source "$BASH_IT"/bash_it.sh

# Little things
unset MAILCHECK
export GIT_HOSTING='git@git.domain.com'

# Git clone and cd
gclone() {
  git clone "$1" && cd "$(basename $_ .git)"
}

# Docs utility scripts
alias brunch='ruby ~/workspace/brunch/brunch.rb'
alias pullall='ruby ~/workspace/docs-utility-scripts/updater/updater.rb'

# Update style checker
update_style () {
  cd ~/workspace/docs-utility-scripts/style-checker
  git pull
  cd ~/.atom/packages/html-special-character-replacer/lib
  cp ~/workspace/docs-utility-scripts/style-checker/html-special-character-replacer.js .
  echo "Style Checker updated."
  cd ~/workspace
}

# Shorthand
alias ph='echo -e ${PATH//:/\\n}'           # Echo human-readable PATH
alias bb='bundle exec bookbinder watch'
alias gs='git status'
alias gp='git pull; ack "<<<<"; ack ">>>>"'
alias gimp='open -a GIMP'                   # open file in GIMP
alias bbedge='BOOKBINDER_EDGE=true'         # shorthand for updating pipelines

# Fix bookbinder gems
bbgems () {
  rm Gemfile*
  cp ~/Documents/a\ working\ Gemfile Gemfile
  cp ~/Documents/a\ working\ Gemfile.lock Gemfile.lock
  bundle install
}

# Navigation shortcuts
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias ~='cd ~'
alias wk='cd ~/workspace'

# Folder operations
alias ll='ls -FGlAhp' 	                    # classify, no group names, long list, skip implied dots, human readable, append slash for dirs
alias cp='cp -iv'                           # prompt before overwrite, verbose
alias mv='mv -iv'                           # prompt before overwrite, verbose
alias mkdir='mkdir -pv'                     # no error if existing, make parent dirs if needed, verbose

# Toolsmiths pooled environments - API token stored in ~/.private
alias gimme-2.7='curl -X POST "https://environments.toolsmiths.cf-app.com/pooled_gcp_engineering_environments/claim?api_token=$TOOLSMITHS_API_TOKEN&pool_name=us_2_7&notes=claimed%20by%20melinda"'
alias gimme-2.8='curl -X POST "https://environments.toolsmiths.cf-app.com/pooled_gcp_engineering_environments/claim?api_token=$TOOLSMITHS_API_TOKEN&pool_name=us_2_8&notes=claimed%20by%20melinda"'
alias gimme-2.9='curl -X POST "https://environments.toolsmiths.cf-app.com/pooled_gcp_engineering_environments/claim?api_token=$TOOLSMITHS_API_TOKEN&pool_name=us_2_9&notes=claimed%20by%20melinda"'
alias gimme-2.10='curl -X POST "https://environments.toolsmiths.cf-app.com/pooled_gcp_engineering_environments/claim?api_token=$TOOLSMITHS_API_TOKEN&pool_name=us_2_10&notes=claimed%20by%20melinda"'

# Tiny Care Terminal
alias tc='tiny-care-terminal'               # opens Tiny Care Terminal dashboard
export TTC_BOTS='tinycarebot,selfcare_bot,dog_feelings'
export TTC_REPOS='~/workspace'
export TTC_WEATHER='Boston'
export TTC_CELSIUS=true
export TTC_APIKEYS=false
export TTC_UPDATE_INTERVAL=20
