# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

alias=ls='ls --color=auto'
alias la='ls -al'
alias ll='ls -l'
alias grep='grep --color'
alias bat='bat --theme=Nord'

export EDITOR='vim'
export LS_COLORS

bindkey -v
export KEYTIMEOUT=1

POWERLEVEL9K_MODE='compatible'

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'line' ]]; then
    echo -ne '\e[5 q'
  fi
}

zle -N zle-keymap-select
zle-line-init() {
    zle -K viins
    echo -ne '\e[5 q'
}
zle -N zle-line-init
echo -ne "\e[1 q"
preexec() { echo -ne '\e[1 q' ;}

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'i' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

#lf
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
        if [ -f "$tmp" ]; then
            dir="$(cat "$tmp")"
            rm -f "$tmp"
            [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
        fi
}
bindkey -s '^o' 'lfcd\n'
#commands and scripts
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
    --color=fg:#e5e9f0,bg:#3b4252,hl:#81a1c1
    --color=fg+:#e5e9f0,bg+:#3b4252,hl+:#81a1c1
    --color=info:#eacb8a,prompt:#bf6069,pointer:#b48dac
    --color=marker:#a3be8b,spinner:#b48dac,header:#a3be8b'

alias BTM="sudo powertop --auto-tune && sudo tlp start && sudo thermald"
alias SAMAD="/home/artin/Data/text/documents/science/coding\ projects/personal\ projects/C/dick"
alias DICK="/home/artin/Data/text/documents/science/coding\ projects/personal\ projects/C/dick"
alias SCMODE="sudo modprobe -r uvcvideo && sudo amixer set Capture nocap"
alias WBOFF="sudo nmcli radio wifi off && sudo rfkill block bluetooth" 
alias VPN10="sudo openconnect c10.from-ok.com:443"
alias VPN9="sudo openconnect c9.from-ok.com:443"
alias VPN8="sudo openconnect c8.from-ok.com:443"
alias VPN7="sudo openconnect c7.from-ok.com:443"
alias VPN6="sudo openconnect c6.from-ok.com:443"
alias VPN5="sudo openconnect c5.from-ok.com:443"
alias VPN4="sudo openconnect c4.from-ok.com:443"
alias VPN3="sudo openconnect c3.from-ok.com:443"
alias VPN2="sudo openconnect c2.from-ok.com:443"
alias VPN1="sudo openconnect c1.from-ok.com:443"
#speed vpn
alias VPNS30="sudo openconnect s30.serspeed.info:555"
alias VPNS3="sudo openconnect s3.serspeed.info:555"
alias VPNS15="sudo openconnect s15.serspeed.info:555"
alias VPNS16="sudo openconnect s16.serspeed.info:555"
alias VPNS2="sudo openconnect s2.serspeed.info:555"
alias VPNS9="sudo openconnect s9.serspeed.info:555"
alias VPNS12="sudo openconnect s12.serspeed.info:555"
alias VPNS4="sudo openconnect s4.serspeed.info:555"
alias VPNS10="sudo openconnect s10.serspeed.info:555"
alias VPNS11="sudo openconnect s11.serspeed.info:555"
alias VPNS7="sudo openconnect s7.serspeed.info:555"
alias VPNS5="sudo openconnect s5.serspeed.info:555"

alias MIC="/home/artin/Data/text/documents/science/coding\ projects/personal\ projects/bash/genius.sh" 
alias lf="lfrun"
alias PASSGEN="python3 /home/artin/Data/text/documents/science/coding\ projects/personal\ projects/python/password_generator.py | xsel -ib ; vim /home/artin/Data/text/documents/private/private/.passwords.txt"
alias MONITOR='sudo xrandr --output "HDMI-1" --set audio force-dvi --mode 1920x1080 && sudo xrandr --output "LVDS-1" --output "HDMI-1" --right-of "LVDS-1"'

#shortcuts
alias CODINGPROJECTS="cd /home/artin/Data/text/documents/science/coding\ projects"
alias CRYPTOO="cd /home/artin/Data/text/documents/science/coding\ projects/personal\ projects/python/CRYPTO"
alias PRIVATE="cd /home/artin/Data/text/documents/private/"
alias SDOCS="cd /home/artin/Data/text/documents/school/normal/11th\ grade/"
alias KBOOKS="cd /home/artin/Data/text/books/knowledge/"
alias OBOOKS="cd /home/artin/Data/text/books/knowledge/science/biology/"
alias CBOOKS="cd /home/artin/Data/text/books/knowledge/science/computer\ science/"
alias ODOCS="cd /home/artin/Data/text/documents/school/olympiad/"
alias S10BOOKS="cd /home/artin/Data/text/books/school/10th\ grade/"
alias S11BOOKS="cd /home/artin/Data/text/books/school/11th\ grade/"
alias S12BOOKS="cd /home/artin/Data/text/books/school/12th\ grade/"
alias TOM="cd /home/artin/Data/to\ move"
alias PICTURES="cd /home/Data/pictures"
alias HOPE="mpv /home/artin/Data/music/Richter\ -\ Opus\ 2020-xCzZngnKV9k.m4a --loop"
alias RETURN2="mpv /home/artin/Data/music/max/09.m4a --no-audio-display --loop"
alias VISA="cd /home/artin/Data/text/documents/work/visa/"
alias SCH="sxiv /home/artin/Data/text/documents/private/schedule/tempsch.jpg"

alias SHQUOTE='slock -m "science demands nothing less than the fervent and unconditional dedication of our entire lives."      -Dr. Cooper' 
alias EP-PI="python3 /home/artin/Data/text/documents/science/coding\ projects/personal\ projects/python/ep-picker.py" 
alias MOO="cowsay MOO"
alias GDBB="gdb --batch --ex r --ex bt --ex q --args"
alias WORK="cd /home/artin/Data/text/documents/work/"
#
alias ls="ls --color=auto"
alias vi="vim"
alias PYTHON="cd /home/artin/Data/text/documents/science/coding\ projects/personal\ projects/python/"
alias C="cd /home/artin/Data/text/documents/science/coding\ projects/personal\ projects/C/"
alias GO="cd /home/artin/Data/text/documents/science/coding\ projects/personal\ projects/go/"
alias PPR="cd /home/artin/Data/text/documents/science/coding\ projects/practicing/practicing\ python/"
alias CPR="cd /home/artin/Data/text/documents/science/coding\ projects/practicing/practicing\ C/"
alias FREE="sudo killall goa-daemon goa-identity-service evolution-addressbook-factory evolution-calendar-factory evolution-source-registry && sudo sh -c 'echo 3 >/proc/sys/vm/drop_caches'"
alias SLEEP="mpv /home/artin/Data/music/max/* --audio-display=no"
alias ALARM="python3 /home/artin/Data/text/documents/science/coding\ projects/personal\ projects/python/alarm/alarm.py"

export MANPAGER="less"

export HOME=/home/artin/
export GOROOT=/usr/lib/go
export GOPATH=/home/artin/.go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin


setopt Extendedglob
setopt rmstarsilent


export SLOCK="/home/artin/.config/slock"
export PATH="$SLOCK:$PATH"


export THEME="/home/artin/Data/programs/theme.sh"
export PATH="$THEME:$PATH"

export SPICETIFY_INSTALL="/home/artin/Data/programs/spicetify-cli"
source /home/artin/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export BSPSWA="/home/artin/Data/programs/bspswallow/bspswallow"
export PATH="$BSPSWA:$PATH"

eval "$(starship init zsh)"

export PATH=$HOME/.config/nvcode/utils/bin:$PATH
