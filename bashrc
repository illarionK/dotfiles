alias tyellow="tmux attach -t yellow"
alias tgreen="tmux attach -t green"
alias tgrey="tmux attach -t grey"

alias nTune="osascript -e 'tell application \"iTunes\" to next track'"
alias nSpot="osascript -e 'tell application \"Spotify\" to next track'"
nlow()
{
  osascript -e 'tell application "iTunes" to set the rating of the current track to 40'
  osascript -e 'tell application "iTunes" to next track'
}
alias nLow=nlow

tojpeg()
{
convert $1 -background white -mosaic +matte ${1%.*}.jpg
}

alias toJPEG=tojpeg
