# syntax = docker/dockerfile:experimental

FROM --platform=${BUILDPLATFORM} alpine:latest
LABEL maintainer="Stone <github.com/ninepeach>"

RUN --mount=type=cache,target=/var/cache/apk apk add dhcp \
	&& touch /var/lib/dhcp/dhcpd.leases

ADD entrypoint.sh /entrypoint.sh
ADD dhcpd.conf /dhcpd.conf

VOLUME /etc/dhcp
EXPOSE 67/udp 67/tcp
RUN chmod +x /entrypoint.sh
CMD ["sh", "/entrypoint.sh"]
