echo "wait ${1} seconds and mute..."
sleep_flag=-s

if [ "${2}" = ${sleep_flag} ]; then
  echo "after ${1} seconds, this pc sleepmode..."
fi
sleep $1
osascript -e "set volume 0/100*7"
echo "it was muted..."
if [ "${2}" = ${sleep_flag} ]; then
  osascript -e 'tell application "Finder" to sleep'
fi
