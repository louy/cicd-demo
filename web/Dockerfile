FROM node:15-slim

ENV NODE_ENV=production

WORKDIR /srv
COPY ./package-lock.json .
RUN npm install --only=production

COPY . .

EXPOSE 5000
CMD npm run prod
