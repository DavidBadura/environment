#!/bin/bash

cd `dirname $0` && source ../config.sh

dpkg -s vim || (confirm 'vim ist nicht installiert, soll es installiert werden?' && apt-get install vim )
