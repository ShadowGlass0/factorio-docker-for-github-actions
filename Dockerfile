FROM factoriotools/factorio:1.1.48

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
