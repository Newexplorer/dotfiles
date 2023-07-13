# To restart after editing: source ~/.bash_aliases:
# for a list of all aliases: compgen -a

# some more ls aliases
alias ls.="ls -a | grep '^\.'"
alias lsdir='ls -d */'
alias lsf='ls -Cp | grep -v /'
alias lsg='ls | grep -i'
alias lsl='ls -Art | tail -n 5'
alias lsh='history | grep $1'

lsfc() { ls -m "$@" | grep -v /; }

# terminator
alias term='terminator -m'
alias zw='xdotool key CTRL+0'
alias zi='xdotool key Ctrl+plus'
alias zo='xdotool key Ctrl+minus'

# search through your history
alias hsg='history | grep'

# Calcurse aliases
alias cq='calcurse -Q --days'
alias cqa='calcurse -a --days'
alias cqt='calcurse -t --days'

# alias voor clear command
alias cls='clear'

# alias for sc-im
alias scim='sc-im'

# alias for ranger
alias ra='ranger'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# alias for vi
alias vi=‘vim’
alias vimr='vim -R'
alias jmptfs='jmtpfs'

# ranger aliases
alias goto='cd ~/Code && bash goto.sh'
alias gc='cd ~/Gitclone'
alias gd='cd ~/Downloads'
alias gD='cd ~/Documents'
alias gE='cd ~/Documents/roentree'
alias gf='cd ~/Gitforeign'
alias gh='cd ~'
alias gi='cd ~/Pictures/infographics'
alias gI='cd ~/Iso'
alias gl='cd ~/Gitlabs'
alias gl='cd ~/Lists'
alias gm='cd ~/Music'
alias gM='cd ~/Music/temporary'
alias gp='cd ~/Pictures'
alias gP='cd ~/Projects'
alias gr='cd /'
alias gs='cd ~/Scripts'
alias gv='cd ~/Videos'
alias gw='cd ~/werk'
alias gW='cd ~/Pictures/wallpapers'
alias gz='cd ~/cheats'
alias pr='cd ~/Projects'
# alias md='mv "$@" ~/Downloads/'

# the lpstat -p command displays the status of a printer while lpstat -p -d also lists available printers.
alias lpstat="lpstat -p"

# Alias definition for opening large amount of files with vim
alias g='vim --remote-silent'

# color ouput
# color cat - print file with syntax highlighting
alias ccat='highlight --out-format=ansi'
# color grep
alias grep='grep --color=auto'

# distribution information
alias os='lsb_release -a'
alias debianlist='cd ~/Lists && bash debianlist.sh'
alias ubuntulist='cd ~/Lists && bash ubuntulist.sh'
alias bunsenlabslist='cd ~/Lists && bash bunsenlabslist.sh'
alias srlist='cd ~/Lists && bash surfrawlist.sh'
alias navoletters='cd ~/Lists && cat navoletters'
alias perllist='cd ~/Lists/ && bash perllist.sh'
alias markdownlist='cd ~/Lists && bash markdownlist.sh'
alias beispiel='cd ~/Lists && bash beispiel.sh'
alias latexlist='cd ~/Lists && bash latexlist.sh'
alias wallpaperlist='cd ~/Lists && bash wallpaperlist.sh'

# ip addresses
alias publicip='curl ifconfig.co'
alias ipv6compress='ipv6calc --addr2compaddr'
alias ipv6uncompress='ipv6calc --addr2uncompaddr'
alias ipv6fulluncompress='ipv6calc --addr2fulluncompaddr'

# display all of reminders
# alias remind='rem -n | sort'
alias remadd='$EDITOR ~/.reminders'

# taskwarrior shortcut
alias told='task oldest'

# git aliases
alias gis='git status'

# miscel
alias beep='cvlc --play-and-exit /usr/share/sounds/KDE-KStars-Finish-Success.ogg'
alias gcalc='galculator'

# w3m
alias duck='w3m -M -s -num -no-graph https://duckduckgo.com'
alias google='w3m -M -s -num -no-graph http://www.google.nl'
alias w3m='w3m -M -s -no-graph'

# surfraw
alias srd='sr -browser=firefox duckduckgo'
alias srg='sr -browser=firefox google'
alias srs='sr -browser=firefox stack'
alias srtrans='sr -browser=firefox translate'
alias srwikieng='sr -browser=firefox wikipedia'
alias sryt='sr -browser=firefox youtube'
alias srgit='sr -browser=firefox github'
alias srarch='sr -browser=firefox archwiki'
alias srdebian='sr -browser=firefox debwiki'

# pdf files
alias z='zathura'
alias ap='apvlv'
alias qpdf='qpdfview'

# pictures
alias gth='gthumb'
alias s='sxiv'
alias sslide='sxiv -S 3 *' #slideshow
alias sth="sxiv -ft *" #thumbnails
alias blimage='bl-image-viewer'
alias m='mirage'
alias wallf='cd ~/Pictures/wallpapers && feh --bg-fill'
alias walls='cd ~/Pictures/wallpapers && feh --bg-scale'
alias wallfs='cd ~/Pictures/wallpapers && feh --bg-scale --bg-fill'
alias n='nomacs'

# weather
alias weather='curl wttr.in/Rotterdam'

# tty-clock
alias clock='tty-clock -s -c'

# bc
alias bc="bc -ql"

# aliases asking for permission
alias mv='mv -iv'
alias cp='cp -iv'
alias rm='rm -iv'
alias mkdir='mkdir -vp'

# difference between two dates
# example: datediff 2012-03-02 2012-01-01
alias datediff='dateutils.ddiff'

# different notation for dates (today)
alias datened='date +%d"-"%m"-"%Y'
alias dateeng='date +%Y"-"%m"-"%d'

# note app nodau
alias donau='nodau'
alias nlist='nodau list'
alias nshow='nodau show'
alias nedit='nodau edit'
alias nnew='nodau new'
alias ndel='nodau del'

# ssh-agent
alias ssha='eval $(ssh-agent) && ssh-add'

# paste the contents of clipit into terminal
alias clip="strings ~/.local/share/clipit/history"

# battery aliases
# alias battery='cat /sys/class/power_supply/BAT0/capacity'
# alias batterystatus='cat /sys/class/power_supply/BAT0/status'

# tmux aliases
alias tmatt='tmux attach -t'
alias tmdet='tmux detach'
# alias tkserf='tmux kill-server'
alias tmkill='tmux kill-session'
alias tmnew='tmux new-session -s'
alias tmls='tmux list-sessions'

editPDFmetadata() {
OUTPUT="${1}-new.pdf"
METADATA="tmp${1}-report.txt"
pdftk "${1}" dump_data output "$METADATA"
"${EDITOR:-vi}" "$METADATA"
pdftk "${1}" update_info "$METADATA"  output "$OUTPUT"
touch -r "${1}" "${OUTPUT}"
}

function ts {
  args=$@
  tmux send-keys -t right "$args" C-m
}



