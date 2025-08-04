# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export DOTFILES="$HOME/.dotfiles"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="edvardm"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z)

# OMZSH
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# STARSHIP
eval "$(starship init zsh)"

# FASTFETCH
fastfetch -c $DOTFILES/fastfetch/config.jsonc --logo none

# GENERAL
alias zshparam="vi $HOME/.dotfiles/zsh/.zshrc"
alias zshsource="source $HOME/.zshrc"
alias cdd="cd $HOME/Bureau/Nodevo"
alias cddp="cd $HOME/Bureau/Perso"
alias cddt="cd $HOME/Bureau/Test"
alias cddp="cd $HOME/Bureau/Code"
alias cdda="cddp && cd Aatis"
alias dbstop="sudo service mariadb stop"
alias chownd="chown -R $USER:$USER"
alias conf="cd $HOME/.dotfiles && vi"
alias wallpaper="bash $HOME/.dotfiles/wallpapers/scripts/random_wallpaper.sh"

# SHOW KEYS
alias sk="screenkey -p fixed -g 15%x5%"

# VIM
alias vi="nvim"

# GIT
alias gti="git"
alias glo="git pull origin"
alias gc="git commit -m"
alias gcg="gitmoji -c"
alias gca="git commit --amend"
alias gcaf="git commit --amend --no-edit"
alias gfetch="git fetch -p"
alias lg="lazygit"

# SYMFONY
alias bin="php bin/console"
alias serve="symfony server:start"

# PYTHON
alias py="python3"

# NODE
alias increase-watch= "sudo sysctl fs.inotify.max_user_watches=524288 && sudo sysctl -p"

# DRUPAL
alias drup-start="drush rs 8616"
alias drush="vendor/bin/drush"
alias drup-cr="drush cache:rebuild"
alias drup-cl="drush cache:clear"
alias drup-mtn-msg="drush config:set system.maintenance message"
alias drup-start-mtn="drush state:set system.maintenance_mode 1 --input-format=integer && drushcr"
alias drup-stop-mtn="drush state:set system.maintenance_mode 0 --input-format=integer && drushcr"
alias drup-cfexport="drush config:export -y"
alias drup-cfimport="drush config:import -y"
alias drup-logs="drush ws"

# DOCKER
alias dc="docker compose"
alias dcu="dc up"
alias dcd="dc down"
alias dce="dc exec"
alias dcedb="dc exec db mysql -uroot -proot"
alias dcedbt="dc exec -T db mysql -uroot -proot"
alias dp="dc exec php"
alias dpbin="dp bin/console"
alias dpbinlf="dp php -d memory_limit=-1  bin/console"
alias dpdrush="dp vendor/bin/drush"
alias admin1="dpdrush user-create nodevo --mail='mbatista@nodevo.com' --password='xspevu' --uri="$1
alias admin2="dpdrush user-add-role 'administrator' nodevo --uri="$1
alias dcedbt="dc exec -T db mysql -uroot -proot"
alias da="dc exec app"
alias dabin="da bin/console"
alias dadrush="da vendor/bin/drush"
alias dps="docker ps -q"
alias dvdb="docker compose cp db:var/lib/mysql ./docker_bkp && tar -czf docker_bkp.tar.gz ./docker_bkp && rm -rf ./docker_bkp"
alias dvdr="tar -xf docker_bkp.tar.gz && docker compose cp ./docker_bkp/. db:var/lib/mysql && rm -rf ./docker_bkp && docker compose restart"

# LAUNCH
alias auto-up="bash $HOME/automatics/bash/auto_up $1"
alias auto-run="bash $HOME/automatics/bash/auto_run $1 $2"
alias increase-watch="bash $HOME/automatics/bash/increase_watch"
alias launch-see="cdd && auto-up SEE && cd SEE && auto-up see-content && sleep 2 && auto-run see-content develop docker && auto-up see-store && increase-watch && auto-run see-front dev && cd .."
alias launch-btl="cdd && cd BTL && auto-up btl-api && increase-watch && auto-run btl-front dev && cd .."
alias launch-promeo="cdd && cd Promeo && auto-up promeo-api && cd Drupal && auto-up promeo-website && cd .. && auto-run promeo-business dev && cd .."
alias launch-uimm-pc="cdd && cd Promeo && auto-up promeo-api && cd Drupal && auto-up uimm-pc-website && cd .. && auto-run promeo-business dev && cd .."
alias launch-uimm-lorraine="cdd && cd Promeo && auto-up promeo-api && cd Drupal && auto-up uimm-lorraine-website && cd .. && auto-run promeo-business dev && cd .."
alias launch-promeo-web="cdd && cd Promeo/Drupal && auto-up promeo-website && cd ../.."
alias launch-uimm-pc-web="cdd && cd Promeo/Drupal && auto-up uimm-pc-website && cd ../.."
alias launch-uimm-lorraine-web="cdd && cd Promeo/Drupal && auto-up uimm-lorraine-website && cd ../.."

# LEGACY
alias launch-btl-legacy="cdd && cd BTL && auto-up btl-api && code btl-api && code btl-front && auto-run btl-front dev && cd .."
alias launch-see-legacy="cdd && code SEE && auto-up SEE && cd SEE && code see-content && auto-up see-content && auto-run see-content start docker && code see-store && auto-up see-store && code see-front && increase-watch && auto-run see-front dev && cd .."
alias launch-promeo-legacy="cdd && cd Promeo && auto-up promeo-api && code promeo-api && cd Drupal && auto-up promeo-website && code promeo-website && cd .. && auto-run promeo-business dev && code promeo-business && cd .."

# HELPER
alias memo="vi $HOME/automatics/memo/auto_run.txt"
alias test="bash $HOME/automatics/bash/test $1 $2"

# STOP
alias auto-stop="bash $HOME/automatics/bash/auto_stop $1"
alias auto-kill="bash $HOME/automatics/bash/auto_kill $1"
alias stop-see="cdd && auto-stop SEE && cd SEE && auto-kill see-content && auto-stop see-content && auto-stop see-store && auto-kill see-front && cd .."
alias stop-btl="cdd && cd BTL && auto-stop btl-api && auto-kill btl-front && cd .."
alias stop-uimm-pc="cdd && cd Promeo && auto-stop promeo-api && cd Drupal && auto-stop uimm-pc-website && cd .. && auto-kill promeo-business && cd .."
alias stop-promeo-web="cdd && cd Promeo/Drupal && auto-stop promeo-website && cd ../.."
alias stop-uimm-pc-web="cdd && cd Promeo/Drupal && auto-stop uimm-pc-website && cd ../.."
alias stop-uimm-lorraine-web="cdd && cd Promeo/Drupal && auto-stop uimm-lorraine-website && cd ../.."
alias stop-promeo="cdd && cd Promeo && auto-stop promeo-api && cd .. && auto-kill promeo-business && stop-promeo-web && stop-uimm-pc-web && stop-uimm-lorraine-web"
