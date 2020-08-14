#!/usr/bin/env bash
sed -i 's/alwaysredirecttossl=1/alwaysredirecttossl=0/' /var/cpanel/cpanel.config
sed -i 's/requiressl=1/requiressl=0/' /var/cpanel/cpanel.config
sed -i 's/strict/disabled/' /var/cpanel/cpanel.config
/scripts/restartsrv_cpsrvd
