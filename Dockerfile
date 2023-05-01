FROM node:18.16.0-alpine3.17

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY www www

EXPOSE 8080

CMD [ "npm", "start" ]
