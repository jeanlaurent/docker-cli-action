FROM docker:19.03.4

ENV DOCKERVERSION=19.03.4

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]