#!/usr/bin/env bash
#
# Connect to the tufts vpn

sudo -k
sudo -v -S

# http://www.infradead.org/openconnect/nonroot.html
sudo ip tuntap add vpn0 mode tun user $(whoami)

openconnect -i vpn0 -s 'sudo -E /usr/share/vpnc-scripts/vpnc-script' vpn.tufts.edu
