FROM strapi/base

WORKDIR /app

COPY ./api/package.json ./
COPY ./api/package-lock.json ./

RUN yarn install

COPY ./api .

RUN NODE_ENV=production yarn build

CMD ["yarn", "start"]

