#!/bin/sh -l
composer global require phpstan/phpstan:0.12
composer install
php ~/.composer/vendor/bin/phpstan $*