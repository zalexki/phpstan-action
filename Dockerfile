FROM prestashop/prestashop:7.3

COPY --from=composer:1.8.6 /usr/bin/composer /usr/bin/composer
RUN composer global require hirak/prestissimo

ADD base.neon /base.neon
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
