FROM node:8

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install 

COPY src src
COPY webpack.config.js ./
COPY .babelrc ./
RUN npm run build

EXPOSE 3000
CMD ["npm", "run", "server"]
