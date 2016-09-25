#!/usr/bin/env bash
#
# Kill active openconnect process.

openconnect_pids=$(pgrep openconnect)
for pid in $openconnect_pids
do
    kill $pid
done
