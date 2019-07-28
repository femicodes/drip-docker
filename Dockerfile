FROM node:10-alpine

WORKDIR /home/node/app

COPY package.json ./

COPY yarn.lock ./

RUN yarn install

COPY . .

EXPOSE 8080

CMD [ "node", "app.js" ]
