ARG ALPINE_VERSION=edge
FROM alpine:$ALPINE_VERSION

# Install dnsmasq with DNSSEC support
RUN apk --no-cache add dnsmasq-dnssec git

# Copy the dnsmasq configuration and hosts file to the appropriate location
COPY dnsmasq.conf /etc/dnsmasq.conf
COPY hosts /etc/hosts

EXPOSE 53 53/udp

# Start dnsmasq in the foreground
ENTRYPOINT ["/usr/sbin/dnsmasq", "-k"]
