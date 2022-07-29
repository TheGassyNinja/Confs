# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
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
#
# install OMZ and plugins
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration
# export LS_COLORS="$(vivid generate lava)"

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
 #Aliases
 export WIP=$(dig +short myip.opendns.com @resolver1.opendns.com)
  export LIP=$(inxi -i | grep 'IP v4' | cut -d' ' -f 5 | cut -d'/' -f 1)

#-----------------------------------------------------#
	#	Edits
#-----------------------------------------------------#
#Git
alias gis='git status'
alias gia='git add * *.*'
alias gic='git commit -m "Under-Construction"'
alias gip='git push'




#---------------CFGs
 alias cfg-bash='vim ~/.bash_aliases'
 alias cfg-zsh='vim ~/zshrc'
 alias cfg-vim='vim ~/.vimrc'
 
 alias Ali-cfg='echo "                    cfg-bash, cfg-zsh, cfg-vim, etc, etc"'

#--------------Notes 
 alias Notes-Main='vim ~/Notes/HK/Main.hk'
 alias Notes-Temp='vim ~/Notes/HK/template.hk'

 alias Ali-Notes='echo "                    Notes-Main, Notes-Temo, Etc, Etc"'

#----------------------------------------------------#
	#	Tmux
#----------------------------------------------------#	
 alias nmux='tmux new -s Work'
 alias amux='tmux a'
 alias dmux='tmux detach' 

#-----------------------------------------------------#
	#	Personal Alises
#-----------------------------------------------------#

alias c='clear'
alias cl='clear && neofetch --config ~/.config/neofetch/colorsonly.conf && la'
alias cb='neofetch --config ~/.config/neofetch/colorsonly.conf'
alias Gas='inxi -Mxxx && inxi -Sxxx && inxi -Ixxx &&inxi -Gxxx && inxi -Axxx'

## Useful aliases
# Replace ls with exa
alias ls='cb && exa -al --color=always --group-directories-first --icons' # preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l.="exa -a | egrep '^\.'"                                     # show only dotfiles
alias ip="ip -color"

alias cn='clear && neofetch' 
 
 
 alias br='source ~/.bashrc'
 alias Desk='cd ~/Desktop'
 alias Down='cd ~/Downloads'
 alias WIP='echo $WIP'
 alias LIP='echo $LIP'
 alias ~='cd ~'
 alias pac='sudo pacman -S'
 alias update='sudo pacman -Syu'

#---------------------#
	#System Info
#---------------------#
 alias Battery='inxi -B -c 12'
 alias Audio='inxi -A -c 12'
 alias Disk='inxi -D -c 12'
 alias Video='inxi -xxxG -c 12'
 alias USB='inxi -xxxJ -c 12'
 alias IP='inxi -xxxi -c 12'
 alias NET='inxi -xxxn -c 12'
 alias PART='inxi -xxxp -c 12'
 alias Weather='inxi -xxxW Argyle,TX -c 12'
 alias Ali-inxi='echo "                    Audio, Battery, Disk, Video, USB, IP, NET, PART, Weather"'
#-----------------------#
	#Mount Shares
#-----------------------#
 alias ShareT='(sudo mount -t nfs -o vers=4 192.168.254.21:/srv/nfs/DataT ~/mnt/DataT)'
 alias Share3='(sudo mount -t nfs -o vers=4 192.168.254.21:/srv/nfs/Data-300 ~/mnt/Data-300)'


 alias Ali-Shares='echo "                    ShareT, Share2. Share3"'



#----------------------------------------------------#
	#	System Alises (Dr460nized)
#----------------------------------------------------#

# Aliases
alias dir='dir --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias grep='grep --color=auto'
alias grubup="sudo update-grub"
alias hw='hwinfo --short'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias psmem='ps auxf | sort -nr -k 4'
alias rmpkg="sudo pacman -Rdd"
alias tarnow='tar -acf '
alias untar='tar -zxvf '
alias upd='/usr/bin/update'
alias vdir='vdir --color=auto'
alias wget='wget -c '


# Cleanup orphaned packages
alias cleanup='sudo pacman -Rns `pacman -Qtdq`'

# Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# Recent installed packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -500 | nl > ~/rip.txt"

# Figlet splash
#clear
#figlet -kpf lean -w 120 -c < gas.txt | lolcat
#slant, lean, bubble, block, 
# sleep 1 ???

show_color() {
    perl -e 'foreach $a(@ARGV){print "\e[48:2::".join(":",unpack("C*",pack("H*",$a)))."m \e[49m "};print "\n"' "$@"
}

neofetch
#-----------------------------------------------------##-----------------------------------------------------#
