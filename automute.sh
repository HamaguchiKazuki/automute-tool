echo "wait ${1} and mute..."

sleep $1
osascript -e 'set volume with output muted'

