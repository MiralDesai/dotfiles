# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

if [[ $(hostname) = 'MACSB-F5W43H6XND' ]]; then
  export ZSH=/Users/miral.desai/.oh-my-zsh
else
  # Path to your oh-my-zsh installation.
  export ZSH=/Users/Miral/.oh-my-zsh
fi

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  rails
  ruby
  rbenv
  kubectl
  docker-compose
)

source $ZSH/oh-my-zsh.sh

# User configuration

fpath+=/opt/homebrew/share/zsh/site-functions
PURE_PROMPT_SYMBOL='>'
# custom theme https://github.com/sindresorhus/pure
# install by running brew install pure
autoload -U promptinit; promptinit
# options for pure can go here
zstyle :prompt:pure:git:stash show yes
zstyle :prompt:pure:prompt:success color '#FFFFFF'
zstyle :prompt:pure:path color '#0099FF'
prompt pure
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY="~/.ssh/id_rsa"

export HASSIO_SSH_KEY="~/.ssh/hassio_rsa"

# install kubectl auto complete
# if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi

# auto cd and cd vars
setopt autocd
setopt cdablevars

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias zshconfig="$EDITOR ~/.zshrc"

#Set config alias for dotfiles
alias config='git --git-dir=$HOME/.myconfig/ --work-tree=$HOME'

#Alias for fd workspace
hash -d fd=$HOME/Documents/farmdrop/

# Alias for sb workspace
hash -d sb=$HOME/Documents/simplybusiness/

# Stop trying to correct what aint broke
alias bundle='nocorrect bundle'

# Better ls
alias ls='eza'

# Better cat
alias cat='bat'

# Use fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(rbenv init -)"
eval "$(pyenv init -)"

# Source nvm
test -f ~/.nvm/nvm.sh && source ~/.nvm/nvm.sh


fortune | cowsay | lolcat
