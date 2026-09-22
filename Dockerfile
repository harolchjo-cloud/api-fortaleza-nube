FROM node:20-alpine

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install --production

COPY . .

USER node

EXPOSE 8080

CMD ["node", "index.js"]
