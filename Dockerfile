ARG NODE_VERSION=22.0.0

FROM node:${NODE_VERSION}-alpine As development

WORKDIR '/app'

COPY package.json ./

RUN npm install

COPY .  .

CMD [ "npm", "run", "start" ]