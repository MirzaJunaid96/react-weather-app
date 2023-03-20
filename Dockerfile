FROM node:alpine As build
USER root
WORKDIR /app
COPY . .
RUN yarn install
#RUN npm install 
RUN yarn build @popperjs/core --save


FROM nginx:alpine
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
#CMD ["yarn", "start"]
# curl -sSL https://get.docker.com | bash
