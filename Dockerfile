FROM node:14-alpine
RUN apk add git
RUN git clone https://github.com/vuejs/vuejs.org.git && cd vuejs.org
RUN npm install && npm build
RUN npm cache clean --force && rm -rf node_modules
