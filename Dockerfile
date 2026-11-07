FROM caddy:2.11.4-alpine

WORKDIR /srv

COPY src/ /srv/

EXPOSE 80

CMD ["caddy", "file-server", "--root", "/srv", "--listen", ":80"]