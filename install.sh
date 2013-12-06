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

confirm "bashrc konfigurieren?" && source ./scripts/bashrc.sh && confirm "bashrc server konfiguration?" && source ./scripts/bashrc_server.sh;
confirm "git konfigurieren?" && source ./scripts/git.sh;
confirm "vim ide installieren?" && source ./scripts/vim.sh;

echo 'Lade deine bashrc neu mit folgenden Befehl: "source ~/.bashrc"';
echo "Fertig!";
