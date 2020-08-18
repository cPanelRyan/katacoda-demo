#!/usr/bin/env bash
sed -i 's/alwaysredirecttossl=1/alwaysredirecttossl=0/' /var/cpanel/cpanel.config
sed -i 's/requiressl=1/requiressl=0/' /var/cpanel/cpanel.config
sed -i 's/strict/disabled/' /var/cpanel/cpanel.config
touch /etc/.whostmgrft
mkdir -p /var/cpanel/activate
touch /var/cpanel/activate/2012-07.v01.EULACPWHM
mkdir -p /var/cpanel/activate/features
touch /var/cpanel/activate/features/disable_feature_showcase
/scripts/restartsrv_cpsrvd
