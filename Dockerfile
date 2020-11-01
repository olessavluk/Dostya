FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json yarn.lock ./
RUN yarn

# Bundle app source
COPY . .

CMD [ "node", "launch.js" ]

EXPOSE 3003
