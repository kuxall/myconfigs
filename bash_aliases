alias psets='cd /home/prakash/selfuniv/programming/problemsets/codeforces'
alias run='./a.out'
alias reload='source ~/.bash_aliases'
alias vimb='vim ~/.bash_aliases'
alias view='xdg-open'
alias vim='konsoleprofile "ColorScheme=Solarized" && vim'
alias godir='cd /home/prakash/selfuniv/programming'
alias python='python3'
alias randtest='cp /home/prakash/selfuniv/.myscripts/randomout.py .'
alias rm='mv -t ~/.Trash/'
mkcd() { mkdir -p "$1"; cd "$1"; }
tpdf() { fname=$1; pdflatex $1 && view "$(basename "$fname" .tex).pdf"; }
alias def="sdcv --color --use-dict \"Oxford Advanced Learner's Dictionary\""
alias thes="sdcv --color --use-dict \"English Thesaurus\""
alias grep='grep --color -P'
alias calc='python /home/prakash/selfuniv/.myscripts/combicalc.py'
alias note='google-chrome -new-window "/home/prakash/builds/laverna/resources/app/dist/index.html"& exit'
alias hackerrank='google-chrome -new-window "https://www.hackerrank.com/dashboard" & exit'
stty -ixon
#disable the suggestion( to install app that is not currently installed on the system).
unset command_not_found_handle
alias pastebin='nc termbin.com 9999'
alias aloud='/home/prakash/builds/simple-google-tts/simple_google_tts en'
