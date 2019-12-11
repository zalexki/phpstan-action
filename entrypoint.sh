#!/bin/sh -l
# composer global require phpstan/phpstan:0.12
# composer install
# php ~/.composer/vendor/bin/phpstan $*

docker run -tid --rm -v ps-volume:/var/www/html --name temp-ps prestashop/prestashop:1.7.0.3;
docker run --rm --volumes-from temp-ps -v $PWD:/web/module -e _PS_ROOT_DIR_=/var/www/html --workdir=/web/module phpstan/phpstan:0.11.19 analyse --configuration=/web/module/tests/phpstan/phpstan.neon;
# docker run --rm --volumes-from temp-ps -v `pwd`:/web/module -e _PS_ROOT_DIR_=/var/www/html --workdir=/web/module ;
ls -la
ls -la tests/phpstan
echo $PWD