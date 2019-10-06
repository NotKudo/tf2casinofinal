FROM node:latest
WORKDIR /usr/src/app

# install dependencies
COPY package*.json ./
RUN npm ci

# copy src
COPY ./ ./

CMD [ "npm", "start" ]