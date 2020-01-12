FROM node:13-alpine

RUN mkdir -p /root/.wrangler && \
    chmod 755 /root && \
    chmod 777 /root/.wrangler && \
    mkdir /app && \
    npm install -g @cloudflare/wrangler
RUN wrangler --help

COPY entrypoint.sh /usr/bin/
RUN chmod 755 /usr/bin/entrypoint.sh

WORKDIR /app

ENTRYPOINT [ "/usr/bin/entrypoint.sh" ]