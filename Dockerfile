FROM alpine:3.14

COPY action.sh /
COPY run.sh /

CMD ["sh", "run.sh"]
