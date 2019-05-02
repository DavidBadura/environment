#!/bin/bash

confirm () {
    # call with a prompt string or use a default
    read -r -p "${1:-Are you sure} (y/n)?" -n 1 response
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

cd `dirname $0` && source config.sh

confirm "configure bash" \
    && source ./scripts/bashrc.sh \
    && confirm "configure bash-server" \
    && source ./scripts/bashrc_server.sh

confirm "install brew" \
    && source ./scripts/brew.sh
    && confirm "install packages" \
    && source ./scripts/brew_packages.sh

confirm "configure git" \
    && source ./scripts/git.sh

confirm "install vim" \
    && source ./scripts/vim.sh

echo "reinitialize your bash configuration by running 'bash' or executing 'source ~/.bashrc'";
echo "All done!";
