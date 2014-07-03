#!/bin/bash

cd `dirname $0` && source ../config.sh

curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
