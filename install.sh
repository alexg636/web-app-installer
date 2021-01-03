#!/bin/bash
#### Author:        Alex George
#### Description:   Web application install script.
#### Usage:         Run this script as a fresh install on a linux server.

sudo apt update

pkg=$(which dialog)
if [[ -z "$pkg" ]]; then
    logz "Installing Dialog Package" "INFO"
    sudo apt install -y dialog
    logz "Dialog Installation Complete" "INFO"
    sleep $SLEEP
else
    logz "Dialog already installed, passing..." "INFO"
fi
