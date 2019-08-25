FROM node:12-alpine AS builder
WORKDIR /build
COPY package*.json ./
RUN npm ci
COPY tsconfig*.json ./
COPY src/ src/
RUN npm run build \
  && npm prune --production

FROM node:12-alpine
LABEL maintainer="kevinpollet <pollet.kevin@gmail.com>"
LABEL com.github.actions.name="typescript-action-template"
LABEL com.github.actions.description="A template to build GitHub Actions in Node.js with TypeScript"
LABEL com.github.actions.icon="star"
LABEL com.github.actions.color="yellow"
RUN apk add --no-cache tini
COPY --from=builder build/lib/ lib/
COPY --from=builder build/node_modules/ node_modules/
ENTRYPOINT [ "/sbin/tini", "--", "node", "/lib/index.js" ]
