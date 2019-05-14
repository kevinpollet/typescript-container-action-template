FROM node:10-alpine as builder
WORKDIR /build
COPY tsconfig.json .
COPY package*.json ./
RUN npm ci
COPY src/ src/
RUN npm run build

FROM node:10-alpine
LABEL com.github.actions.name="typescript-action-example"
LABEL com.github.actions.description="A GitHub Action example using TypeScript"
LABEL com.github.actions.icon="star"
LABEL com.github.actions.color="yellow"
LABEL repository="http://github.com/kevinpollet/typescript-action-example"
LABEL homepage="http://github.com/kevinpollet/typescript-action-example#readme"
LABEL maintainer="kevinpollet <pollet.kevin@gmail.com>"
RUN apk add --no-cache tini
COPY package*.json ./
RUN npm install --production
COPY --from=builder build/lib/ lib/
ENTRYPOINT [ "/sbin/tini", "--", "node", "/lib/index.js" ]
