FROM ghcr.io/bplein/factorio-docker:2.0.10

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
