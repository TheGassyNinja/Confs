 #Aliases
 export WIP=$(dig +short myip.opendns.com @resolver1.opendns.com)
  export LIP=$(inxi -i | grep 'IP v4' | cut -d' ' -f 5 | cut -d'/' -f 1)

#-----------------------------------------------------#
	#	Edits
#-----------------------------------------------------#

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
 #alias la='ls -A'

## Useful aliases
# Replace ls with exa
alias ls='exa -al --color=always --group-directories-first --icons' # preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l.="exa -a | egrep '^\.'"                                     # show only dotfiles
alias ip="ip -color"

 
 
 
 
 alias br='source ~/.bashrc'
 alias Desk='cd ~/Desktop'
 alias Down='cd ~/Downloads'
 alias WIP='echo $WIP'
 alias LIP='echo $LIP'
 alias ~='cd ~'
 alias pac='sudo pacman -S'
 alias startssh='sudo systemctl start sshd'


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
 alias Share2='(sudo mount -t nfs -o vers=4 192.168.254.21:/srv/nfs/Data2 ~/mnt/Data2)'
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

# Help people new to Arch
alias apt-get='man pacman'
alias apt='man pacman'
alias helpme='cht.sh --shell'
alias please='sudo'
alias tb='nc termbin.com 9999'

# Cleanup orphaned packages
alias cleanup='sudo pacman -Rns `pacman -Qtdq`'

# Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# Recent installed packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"

# Figlet splash
#clear
#figlet -kpf lean -w 120 -c < gas.txt | lolcat
#slant, lean, bubble, block, 
# sleep 1 ???



# HSTR configuration - add this to ~/.bashrc
alias hh=hstr                    # hh to be alias for hstr
export HSTR_CONFIG=hicolor       # get more colors
shopt -s histappend              # append new history items to .bash_history
export HISTCONTROL=ignorespace   # leading space hides commands from history
export HISTFILESIZE=10000        # increase history file size (default is 500)
export HISTSIZE=${HISTFILESIZE}  # increase history size (default is 500)
# ensure synchronization between bash memory and history file
export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"
# if this is interactive shell, then bind hstr to Ctrl-r (for Vi mode check doc)
if [[ $- =~ .*i.* ]]; then bind '"\C-r": "\C-a hstr -- \C-j"'; fi
# if this is interactive shell, then bind 'kill last command' to Ctrl-x k
if [[ $- =~ .*i.* ]]; then bind '"\C-xk": "\C-a hstr -k \C-j"'; fi

#-----------------------------------------------------##-----------------------------------------------------#
