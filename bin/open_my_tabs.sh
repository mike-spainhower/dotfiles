#!/bin/bash

tab="--tab"
foo=""

set_cmd() {
    cmd="bash -c '${1}';bash"
}

set_cmd 'cmus'
foo+=($tab -e "$cmd")

set_cmd 'cd ~/repos/homebuddy-webapp'
for i in 1 2 3; do
    foo+=($tab -e "$cmd")
done

set_cmd 'cd ~/repos/homebuddy-apis'
for i in 1 2; do
    foo+=($tab -e "$cmd")
done

set_cmd 'cd ~/repos'
for i in 1 2; do
    foo+=($tab -e "$cmd")
done

exec gnome-terminal "${foo[@]}"
