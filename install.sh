#!/usr/bin/env bash

VAGRANT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

get_rc_path(){
    if [ -f "~/.bashrc" ]; then
        echo ".bashrc"
    else
        echo ".bash_rc"
    fi
}

if grep -q "$VAGRANT_PATH/autoload.sh" ~/$(get_rc_path)
then
    echo "Vagrant scripts already installed."
else
    echo "\n# Vagrant functions autoload \nsource $VAGRANT_PATH/autoload.sh" >> ~/$(get_rc_path);
    echo "Vagrant scripts installed.";
    exec $SHELL -l;
fi;