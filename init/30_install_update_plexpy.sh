#!/bin/bash

[[ ! -d /opt/plexpy/.git ]] && (git clone https://github.com/drzoidberg33/plexpy.git /opt/plexpy && \
chown -R abc:abc /config)

# opt out for autoupdates
[ "$ADVANCED_DISABLEUPDATES" ] && exit 0

cd /opt/plexpy
git pull
chown -R abc:abc /config
