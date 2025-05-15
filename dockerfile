FROM node:22.13.1-alpine3.21

WORKDIR /app

COPY . .

RUN npm install

CMD ["npm", "start"]
