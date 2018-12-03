if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

source ~/.private

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bobby'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Load Bash It
source $BASH_IT/bash_it.sh

# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it"

# It will show us the way
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export PATH="$PATH:$HOME/.rvm/bin"

# Tiny Care Terminal
export TTC_BOTS='tinycarebot,selfcare_bot,dog_feelings'
export TTC_REPOS='~/workspace'
export TTC_WEATHER='San Francisco'
export TTC_CELSIUS=true
export TTC_APIKEYS=false
export TTC_UPDATE_INTERVAL=20

# Navigation shortcuts
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias ~='cd ~'
alias wk='cd ~/workspace'
alias pcf='cd ~/workspace/docs-book-pivotalcf && gp && bb'
alias oss='cd ~/workspace/docs-book-cloudfoundry && gp && rvm use 2.3.0 && bb'
alias pws='cd ~/workspace/docs-book-runpivotal && gp && bb'
alias tile='cd ~/workspace/docs-book-tiledev && gp && bb'
alias pksb='cd ~/workspace/docs-book-pks && rvm use 2.3.0 && gp && bb'
alias pksc='cd ~/workspace/docs-pks && gp'
alias cfcr='cd ~/workspace/docs-cfcr && gp'

# Shorthand
alias ph='echo -e ${PATH//:/\\n}'           # Echo human-readable PATH
alias bb='bookbinder watch'
alias gs='git status'
alias gp='git pull'
export BUILDPACK="https://github.com/cloudfoundry/ruby-buildpack#v1.6.28"

# Git clone and cd
gclone() {
  git clone "$1" && cd "$(basename $_ .git)"
}

# App shortcuts
alias subl='open -a Sublime\ Text'          # open file in Sublime Text
alias s='open -a Sublime\ Text .'           # open dir in Sublime Text
alias gimp='open -a GIMP'                   # open file in GIMP
alias atom='open -a Atom'                   # open file in Atom
alias graf='open -a OmniGraffle'            # open file in OmniGraffle
alias tc='tiny-care-terminal'               # opens Tiny Care Terminal dashboard

# Folder operations
alias ll='ls -FGlAhp' 	                    # classify, no group names, long list, skip implied dots, human readable, append slash for dirs
alias cp='cp -iv'                           # prompt before overwrite, verbose
alias mv='mv -iv'                           # prompt before overwrite, verbose
alias mkdir='mkdir -pv'                     # no error if existing, make parent dirs if needed, verbose

# Show or hide hidden Finder files
alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'

# Docs utility scripts
alias bordify='ruby ~/workspace/docs-utility-scripts/bordify/bordify.rb'
alias brunch='ruby ~/workspace/brunch/brunch.rb'
alias pullall='ruby ~/workspace/docs-utility-scripts/updater/updater.rb'

# Fix my camera
alias camfix='sudo killall VDCAssistant && sudo killall AppleCameraAssistant'

# WTF is wrong with python
alias pip='/usr/local/bin/pip2'

# Shell command completion for gcloud
if [ -f '/usr/local/bin/google-cloud-sdk/completion.bash.inc' ]; then source '/usr/local/bin/google-cloud-sdk/completion.bash.inc'; fi

