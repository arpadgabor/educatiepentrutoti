FROM node:12-alpine

WORKDIR /app

RUN apk update && apk upgrade
RUN apk add git

COPY ./web /app
RUN npm install

ENV API_URL https://api.educatiepentrutoti.ro
ENV ONESIGNAL_ID 5a02fd69-5d79-4587-8dd0-652b3a913d21

RUN npm run build

EXPOSE 3000

ENV NUXT_HOST 0.0.0.0
ENV NUXT_PORT 3000

CMD [ "npm", "start" ]
