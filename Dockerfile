FROM docker.n8n.io/n8nio/n8n:1.120.4

USER root
RUN apk update && apk add --no-cache     chromium     chromium-chromedriver     nss     freetype     harfbuzz     ca-certificates     ttf-freefont

ENV PUPPETEER_EXECUTABLE_PATH="/usr/bin/chromium-browser"
ENV PUPPETEER_SKIP_DOWNLOAD=true

USER node
