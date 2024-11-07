FROM ghcr.io/bplein/factorio-docker:2.0.15

COPY ./entrypoint.sh /entrypoint.sh

USER root

RUN mkdir -p "$GITHUB_WORKSPACE/factorio" && chown -R factorio:factorio "$GITHUB_WORKSPACE"

USER factorio

HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 CMD pgrep factorio || exit 1

ENTRYPOINT ["/entrypoint.sh"]
