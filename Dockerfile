FROM node:14.8.0-alpine

RUN mkdir /frontend

WORKDIR /app/frontend

COPY package*.json ./
COPY package-lock*.json ./

RUN yarn global add @vue/cli@4.5.3
RUN yarn install
ENV HOST=0.0.0.0
CMD ["yarn", "run", "serve"]