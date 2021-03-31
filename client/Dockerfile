FROM node:15.12-alpine3.10

WORKDIR /usr/src/app

COPY package*.json ./

RUN apk update \ 
  && chown node:node /usr/src/app \ 
  && yarn 

USER node

COPY . .

CMD ["yarn", "start"]
