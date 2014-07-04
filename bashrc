alias vim="/usr/local/bin/vim"

alias ll="ls -lhGp"

bundleexec()
{
  bundle exec $1 $2 $3 $4
}
alias b=bundleexec

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
convert $1 -background white -interlace Plane -quality 80 -mosaic +matte ${1%.*}.jpg
}

alias toJPEG=tojpeg

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
