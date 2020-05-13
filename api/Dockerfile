FROM strapi/base

WORKDIR /app

COPY ./api/package.json ./
COPY ./api/package-lock.json ./

RUN npm install

COPY ./api .

VOLUME /app/public/uploads
ENV NODE_ENV production

RUN npm run build

EXPOSE 1337
CMD ["npm", "start"]
