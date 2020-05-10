FROM strapi/base

WORKDIR /app

COPY ./api/package.json ./
COPY ./api/package-lock.json ./

RUN npm install

COPY ./api .

ENV NODE_ENV production

RUN npm run build

EXPOSE 1337
CMD ["npm", "start"]
