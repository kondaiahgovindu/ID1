FROM node:carbon
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY my-app-1.0-SNAPSHOT.jar ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]
