FROM node:10-alpine as build
WORKDIR /build
COPY tsconfig.json .
COPY package*.json ./
RUN npm ci
COPY src/ src/
RUN npm run build

FROM node:10-alpine
RUN apk add --no-cache tini
COPY package*.json ./
RUN npm install --production
COPY --from=build build/lib/ lib/
ENTRYPOINT [ "/sbin/tini", "--", "node", "lib/index.js" ]
