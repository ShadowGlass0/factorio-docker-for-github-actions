FROM ghcr.io/bplein/factorio-docker:1.1.87

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
