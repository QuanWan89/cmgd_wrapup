FROM node:10

# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 80

CMD ["node", "index.js"]
