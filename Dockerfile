# checkov:skip=CKV_DOCKER_3
FROM ghcr.io/bplein/factorio-docker:2.0.16

COPY ./entrypoint.sh /entrypoint.sh

HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 CMD pgrep factorio || exit 1

ENTRYPOINT ["/entrypoint.sh"]
