alias vim="/usr/local/bin/vim"

alias ll="ls -lhGp"

bundleexec()
{
  bundle exec $@
}
alias b=bundleexec

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
convert $1 -strip -background white -interlace Plane -quality "95%" -mosaic -alpha remove ${1%.*}.jpg
}

alias toJPEG=tojpeg

alias npm-exec='PATH=$(npm bin):$PATH'

alias cleantree="tree -I 'node_modules|bower_components|Gemfile*' -F"

switchAllPanesToFolderInTmux()
{
  cd $1
  pwd=$(pwd)
  paneIndexString=$(tmux list-panes -F "#{pane_index}" | tr "\n" " ")
  paneIndexArray=($paneIndexString)
  for i in ${paneIndexArray[@]}
  do
    tmux send-keys -t "$i" "cd $pwd" Enter
  done
  tmux select-pane -t "${paneIndexArray[0]}"
}
alias cdpanes=switchAllPanesToFolderInTmux

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
