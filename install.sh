#!/usr/bin/env bash

set -e
# set -x

# http://stackoverflow.com/questions/59895/can-a-bash-script-tell-which-directory-it-is-stored-in
g_scripts_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

g_bin_dir="${HOME}/bin"
mkdir -p $g_bin_dir

scripts=(
    "vpn-connect.sh" "vpn-disconnect.sh"
    "monitor-connect.sh" "monitor-disconnect.sh"
)
for filename in "${scripts[@]}"
do
    echo "Installing $filename..."
    ln -s "${g_scripts_dir}/${filename}" "${g_bin_dir}/${filename}"
done
