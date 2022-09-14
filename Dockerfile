FROM --platform=${BUILDPLATFORM} alpine:latest
LABEL maintainer="Stone <github.com/magicst0ne>"

RUN apk add --no-cache dhcp \
	&& touch /var/lib/dhcp/dhcpd.leases
	
ADD entrypoint.sh /entrypoint.sh
ADD dhcpd.conf /dhcpd.conf

VOLUME /etc/dhcp
EXPOSE 67/udp 67/tcp
RUN chmod +x /entrypoint.sh
CMD ["sh", "/entrypoint.sh"]
