FROM ghcr.io/bplein/factorio-docker:1.1.110

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
