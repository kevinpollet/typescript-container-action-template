FROM node:12-alpine AS builder
WORKDIR /build
COPY package*.json ./
RUN npm ci
COPY tsconfig*.json ./
COPY src/ src/
RUN npm run build \
  && npm prune --production

FROM node:12-alpine
RUN apk add --no-cache tini
COPY --from=builder build/lib/ lib/
COPY --from=builder build/node_modules/ node_modules/
ENTRYPOINT [ "/sbin/tini", "--", "node", "/lib/index.js" ]
