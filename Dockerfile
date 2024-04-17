FROM caddy:2.7-alpine

EXPOSE 80
CMD caddy reverse-proxy --from :80 --to $PROXY_TARGET --insecure --change-host-header
