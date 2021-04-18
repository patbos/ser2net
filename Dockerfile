FROM alpine:3.12.4

ENV CONFIG "3000:raw:0:/dev/ttyUSB0:38400 NONE 1STOPBIT 8DATABITS"

RUN apk --no-cache add ser2net bash
ADD entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh

EXPOSE 3000

ENTRYPOINT ["/entrypoint.sh"]

CMD ["ser2net", "-d", "-c", "/etc/ser2net.conf"]