FROM node:12-alpine

ARG API_URL
ARG ONESIGNAL_ID

WORKDIR /app

RUN apk update && apk upgrade
RUN apk add git

COPY ./web /app
RUN npm install

ENV API_URL ${API_URL}
ENV ONESIGNAL_ID ${ONESIGNAL_ID}

RUN npm run build

ENV NUXT_HOST 0.0.0.0
ENV NUXT_PORT 3000

EXPOSE 3000
CMD [ "npm", "start" ]
