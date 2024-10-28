FROM ghcr.io/bplein/factorio-docker:2.0.11

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
