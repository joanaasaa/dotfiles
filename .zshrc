# Don't show random % when the terminal starts
unsetopt PROMPT_SP

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="dracula"
# ZSH_THEME="af-magic"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
plugins=(
	git 
	zsh-syntax-highlighting
	zsh-autosuggestions
)

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

########################################################
#               ZSH SYNTAX HIGHLIGHTING                #
########################################################
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[builtin]='fg=84,bold'
ZSH_HIGHLIGHT_STYLES[alias]='fg=84,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=84,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=84,bold'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=215'
ZSH_HIGHLIGHT_STYLES[path]='none'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=141'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=141'

######################################
#             FUZZY FINDER           # 
######################################
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

######################################
#               ALIASES              # 
######################################
alias t='tmux at || tmux'
alias t-kill='tmux kill-server'
alias gsctl2path='export PATH="$HOME/bin:$PATH"'
alias rc='source ~/.zshrc'

######################################
#             GIT ALIASES            # 
######################################
alias gst='git status'
alias gf='git fetch'
alias gl='git log'
alias ga='git add'
alias gaa='git add --all'
alias gcm='git commit -m'
alias gcout='git checkout'
alias gd='git diff'
alias gpl='git pull'
alias gps='git push'
alias gs='git stash'
alias gsm='git stash push -m'
alias gsp='git stash pop'
alias gsl='git stash list'
alias gr='git restore'
alias grs='git restore --staged'

######################################
#              ISTSAT                # 
######################################
alias build-obc='PROJECT=OBCMain TARGET_ARCH=ARCH_OBC make buildP -j 4'
alias build-eps='PROJECT=EPSMain TARGET_ARCH=ARCH_EPS make buildP -j 4'
alias build-com='PROJECT=COMMain TARGET_ARCH=ARCH_COM make buildP -j 4'
alias build-pl='PROJECT=PLMain TARGET_ARCH=ARCH_PLM4 make buildP -j 4'

alias flash-obc='PROJECT=OBCMain TARGET_ARCH=ARCH_OBC make flashP -j 4'
alias flash-eps='PROJECT=EPSMain TARGET_ARCH=ARCH_EPS make flashP -j 4'
alias flash-com='PROJECT=COMMain TARGET_ARCH=ARCH_COM make flashP -j 4'
alias flash-pl='PROJECT=PLMain TARGET_ARCH=ARCH_PLM4 make flashP -j 4'

######################################
#               FREIHEIT             # 
######################################
GOPATH=$HOME/go
export CONAN_LOGIN_USERNAME=divku640@dentsplysirona.com
export CONAN_PASSWORD=AKCp8ogzT8prsXP2PquHrEzisXgS9hLqp2nX3AULt6gUKFPR5SA9mzHeoQjK7wgsjFWi6SEaz

coverage(){
        NOW=$(date +%s)
        OUT=/tmp/coverage-$NOW.out
        go test --coverprofile=$OUT $1
        go tool cover --html=$OUT
}
