FROM node:alpine
WORKDIR /app
COPY . .
RUN yarn install
COPY . /app
EXPOSE 3000
CMD ["yarn", "start"]
