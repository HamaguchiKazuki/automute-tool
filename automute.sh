echo "wait ${1} seconds and mute..."
sleep_flag=-s

## select OS ##
if [ "$(uname)" = 'Darwin' ]; then
	OS='Mac'
elif [ "$(uname)" = 'Linux' ]; then
	OS='Linux'
else
	echo "Your platform ($(uname -a)) is not supported."
	exit 1
fi

## Play the music time ##
if [ "${2}" = ${sleep_flag} ]; then
	echo "after ${1} seconds, this pc sleepmode..."
fi

sleep $1


## volume mute ##
if [ "${OS}" = 'Mac' ]; then
	osascript -e "set volume 0/100*7"
elif [ "${OS}" = 'Linux' ]; then
	pacmd set-sink-volume @DEFAULT_SINK@ 0x0000
fi
echo "it was muted..."

## sleep mode of your PC ##
if [ "${2}" != ${sleep_flag} ]; then
	exit 1
fi

if [ "${OS}" = 'Mac' ]; then
	osascript -e 'tell application "Finder" to sleep'
elif [ "${OS}" = 'Linux' ]; then
	xset dpms force suspend
fi
