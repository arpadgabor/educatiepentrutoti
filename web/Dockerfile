FROM node:12-alpine

WORKDIR /app

RUN apk update && apk upgrade
RUN apk add git

COPY ./web /app
RUN npm install

RUN npm run build

EXPOSE 3000

ENV NUXT_HOST 0.0.0.0
ENV NUXT_PORT 3000

CMD [ "npm", "start" ]
