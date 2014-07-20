#!/bin/bash

[ -f ~/.bashrc.local ] && mv ~/.bashrc.local ~/.bashrc.local.${timestamp}

ln -sf ~/environment/files/bashrc_server ~/.bashrc.local
