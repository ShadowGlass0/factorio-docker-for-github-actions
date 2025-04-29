# checkov:skip=CKV_DOCKER_3
FROM factoriotools/factorio:2.0.46

COPY ./entrypoint.sh /entrypoint.sh

HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 CMD pgrep factorio || exit 1

ENTRYPOINT ["/entrypoint.sh"]
