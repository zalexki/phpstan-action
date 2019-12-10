#!/bin/sh -l
composer global require phpstan/phpstan
php ~/.composer/vendor/bin/phpstan analyse $*