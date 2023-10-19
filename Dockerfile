FROM ghcr.io/bplein/factorio-docker:1.1.94

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
