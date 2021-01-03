#!/bin/bash
#### Author:        Alex George
#### Description:   Functions to be called during installation or upgrade of web application server.
#### Usage:         Main installation script will source local functions.

SLEEP=2

## Log Function: standardizes echo output.
logz() {
    if [[ $2 == "INFO" ]]; then
        now=$(date +'%m/%d/%Y %T')
        echo "## INFO ##    [$now]    | $1" 
    fi
}

## Domain Registration Function: enforces server IP verification with domain registration.
