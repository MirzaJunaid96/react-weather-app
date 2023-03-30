FROM node:alpine As build
USER root
WORKDIR /app
COPY . .
RUN yarn install
#RUN npm install 
RUN yarn build


FROM nginx:alpine
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
#CMD ["yarn", "start"]
# curl -sSL https://get.docker.com | bash
# https://medium.com/@joassouramou/terraform-hands-on-how-to-build-and-push-a-docker-image-on-ecr-using-aws-codebuild-8ebc444e5d48
