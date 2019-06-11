FROM node:12-alpine as builder
WORKDIR /build
COPY tsconfig*.json ./
COPY package*.json ./
RUN npm ci
COPY src/ src/
RUN npm run build

FROM node:12-alpine
LABEL com.github.actions.name="typescript-action-template"
LABEL com.github.actions.description="A template to build GitHub Actions in Node.js with TypeScript"
LABEL com.github.actions.icon="star"
LABEL com.github.actions.color="yellow"
LABEL repository="http://github.com/kevinpollet/typescript-action-template"
LABEL homepage="http://github.com/kevinpollet/typescript-action-template#readme"
LABEL maintainer="kevinpollet <pollet.kevin@gmail.com>"
RUN apk add --no-cache tini
COPY package*.json ./
RUN npm install --production
COPY --from=builder build/lib/ lib/
ENTRYPOINT [ "/sbin/tini", "--", "node", "/lib/index.js" ]
