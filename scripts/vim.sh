#!/bin/bash

dpkg -s vim || (confirm 'vim ist nicht installiert, soll es installiert werden?' && apt-get install vim )
