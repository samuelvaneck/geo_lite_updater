ARG alpine_version
FROM alpine:${alpine_version}

COPY action.sh /
COPY run.sh /

CMD ["sh", "run.sh"]
