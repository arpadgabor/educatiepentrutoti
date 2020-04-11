FROM strapi/base

WORKDIR /app

COPY ./api/package.json ./
COPY ./api/package-lock.json ./

RUN yarn install

COPY ./api .

ENV NODE_ENV production

RUN yarn build

EXPOSE 1337

CMD ["yarn", "start"]

