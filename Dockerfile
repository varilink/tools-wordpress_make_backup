FROM varilink/tools/ssh-client

COPY docker-entrypoint.sh /

WORKDIR /backup

ENTRYPOINT [ "bash", "/docker-entrypoint.sh" ]
