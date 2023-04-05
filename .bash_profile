# Profiles
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"
# source ~/.private

# Shut up about zsh already
export BASH_SILENCE_DEPRECATION_WARNING=1

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Git clone and cd
gclone() {
  git clone "$1" && cd "$(basename $_ .git)"
}

# Shorthand
alias ph='echo -e ${PATH//:/\\n}'           # Echo human-readable PATH
alias gs='git status'
alias gp='git pull; ack "<<<<"; ack ">>>>"'
alias gimp='open -a GIMP'                   # open file in GIMP
alias subl='open -a "Sublime Text"'         # open Sublime Text

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

# Tiny Care Terminal
alias tc='tiny-care-terminal'               # opens Tiny Care Terminal dashboard
export TTC_BOTS='tinycarebot,selfcare_bot,dog_feelings'
export TTC_REPOS='~/workspace'
export TTC_WEATHER='San Francisco'
export TTC_CELSIUS=true
export TTC_APIKEYS=false
export TTC_UPDATE_INTERVAL=20

# Bash-it config

# If not running interactively, don't do anything
case $- in
  *i*) ;;
    *) return;;
esac

# Path to the bash it configuration
export BASH_IT="/Users/melinda/.bash_it"

# Lock and Load a custom theme file.
# Leave empty to disable theming.
# location /.bash_it/themes/
export BASH_IT_THEME='bobby'

# Some themes can show whether `sudo` has a current token or not.
# Set `$THEME_CHECK_SUDO` to `true` to check every prompt:
#THEME_CHECK_SUDO='true'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Set this to the location of your work or project folders
#BASH_IT_PROJECT_PATHS="${HOME}/workspace

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true
# Set to actual location of gitstatus directory if installed
#export SCM_GIT_GITSTATUS_DIR="$HOME/gitstatus"
# per default gitstatus uses 2 times as many threads as CPU cores, you can change this here if you must
#export GITSTATUS_NUM_THREADS=8

# If your theme use command duration, uncomment this to
# enable display of last command duration.
#export BASH_IT_COMMAND_DURATION=true
# You can choose the minimum time in seconds before
# command duration is displayed.
#export COMMAND_DURATION_MIN_SECONDS=1

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Uncomment this to make Bash-it create alias reload.
# export BASH_IT_RELOAD_LEGACY=1

# Load Bash It
source "$BASH_IT"/bash_it.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"
