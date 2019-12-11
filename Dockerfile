FROM docker:dind

ADD base.neon /base.neon
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
