#
# ~/.bashrc

#commands and scripts
alias BTM="sudo powertop --auto-tune && sudo tlp start && sudo thermald"
alias SAMAD="/home/artin/Data/text/documents/science/coding\ projects/personal\ projects/C/dick"
alias DICK="/home/artin/Data/text/documents/science/coding\ projects/personal\ projects/C/dick"
alias SCMODE="sudo modprobe -r uvcvideo && sudo amixer set Capture nocap"
alias WBOFF="sudo nmcli radio wifi off && sudo rfkill block bluetooth" 
alias VPN10="sudo openconnect c10.serverkm.xyz:443"
alias VPN9="sudo openconnect c9.serverkm.xyz:443"
alias VPN8="sudo openconnect c8.serverkm.xyz:443"
alias VPN7="sudo openconnect c7.serverkm.xyz:443"
alias VPN6="sudo openconnect c6.serverkm.xyz:443"
alias VPN5="sudo openconnect c5.serverkm.xyz:443"
alias VPN4="sudo openconnect c4.serverkm.xyz:443"
alias VPN3="sudo openconnect c3.serverkm.xyz:443"
alias VPN2="sudo openconnect c2.serverkm.xyz:443"
alias VPN1="sudo openconnect c1.serverkm.xyz:443"
alias MIC="/home/artin/Data/text/documents/science/coding\ projects/personal\ projects/bash/genius.sh" 
alias SIKTIR="cat /home/artin/Data/text/documents/private/siktir.txt"

#shortcuts
alias CODINGPROJECTS="cd /home/artin/Data/text/documents/science/coding\ projects"
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
alias SHQUOTE='slock -m "science demands nothing less than the fervent and unconditional dedication of our entire lives."      -Dr. Cooper' 
alias TABLE="zathura /home/artin/Data/text/documents/private/schedule/workflow/table.pdf"
alias EP-PI="python3 /home/artin/Data/text/documents/science/coding\ projects/personal\ projects/python/ep-picker.py"

export SPICETIFY_INSTALL="/home/artin/Data/programs/spicetify-cli"
export PATH="$SPICETIFY_INSTALL:$PATH"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\033[36m\]\h-[\W] > '
