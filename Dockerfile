FROM alpine:latest
RUN apk add --no-cache nodejs npm git
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 80
CMD [ "node", "server.js" ]
