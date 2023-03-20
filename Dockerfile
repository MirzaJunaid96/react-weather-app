FROM node:alpine As build
USER root
WORKDIR /app
COPY . .
RUN yarn install
CMD ["yarn", "start"]
