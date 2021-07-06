FROM node:14

# create app directory
WORKDIR /usr/src/app

# install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 3000
# CMD [ "node", "server.js"]
CMD npm run start
