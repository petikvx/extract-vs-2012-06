#!/bin/sh
sudo chmod -R 755 /Library/StartupItems/OSXDriverUpdates
sudo chown -R root:wheel /Library/StartupItems/OSXDriverUpdates
mkdir /var/root/.jnana
cp $HOME/.jnana/jnana.tsa /var/root/.jnana
sudo chmod -R 755 /var/root/.jnana
