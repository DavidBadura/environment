#!/bin/bash
confirm () {
    # call with a prompt string or use a default
    read -r -p "${1:-Are you sure?} " -n 1 response
    echo ""
    case $response in
        [yY][eE][sS]|[yY])
            true
            ;;
        *)
            false
            ;;
    esac
}

confirm "bashrc konfigurieren?" && source ./install/bashrc.sh;
confirm "git konfigurieren?" && source ./install/git.sh;

echo "fertig!";
