FROM node:current-alpine

ENV NODE_ENV production

WORKDIR /app

COPY . .

RUN npm install --production --silent
RUN npm run build


CMD ["npm", "start"]
