#!/bin/sh -l
# composer global require phpstan/phpstan:0.12
# composer install
# php ~/.composer/vendor/bin/phpstan $*

docker run -tid --rm -v ps-volume:/var/www/html --name temp-ps prestashop/prestashop:1.7.0.3;
ls $PWD;
docker run --rm --volumes-from temp-ps -v /github/workspace:/web/module -e _PS_ROOT_DIR_=/var/www/html --workdir=/web/module --entrypoint "ls" phpstan/phpstan:0.11.19 -la /
docker run --rm --volumes-from temp-ps -v /github/workspace:/web/module -e _PS_ROOT_DIR_=/var/www/html --workdir=/web/module --entrypoint "ls" phpstan/phpstan:0.11.19 -la /web/module
docker run --rm --volumes-from temp-ps -v /github/workspace:/web/module -e _PS_ROOT_DIR_=/var/www/html --workdir=/web/module --entrypoint "ls" phpstan/phpstan:0.11.19 -la /var/www
docker run --rm --volumes-from temp-ps -v /github/workspace:/web/module -e _PS_ROOT_DIR_=/var/www/html --workdir=/web/module --entrypoint "ls" phpstan/phpstan:0.11.19 -la /var/www/html