FROM node:6

RUN mkdir /app
WORKDIR /app
COPY package.json /app
COPY . /app
RUN npm install
EXPOSE 8080
CMD [ "npm", "start" ]
#CMD [ "ping", "localhost" ]