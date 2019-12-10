#!/bin/sh -l
composer global require phpstan/phpstan:0.12
php ~/.composer/vendor/bin/phpstan $*