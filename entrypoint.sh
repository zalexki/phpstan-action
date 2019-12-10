#!/bin/sh -l
# composer global require phpstan/phpstan:0.12
# composer install
# php ~/.composer/vendor/bin/phpstan $*

docker run -tid --rm -v ps-volume:/var/www/html --name temp-ps prestashop/prestashop;
docker run --rm --volumes-from temp-ps -v $PWD:/web/module -e _PS_ROOT_DIR_=/var/www/html --workdir=/web/module phpstan/phpstan:0.11.19 analyse --configuration=/web/module/tests/phpstan/phpstan.neon;