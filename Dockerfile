FROM node:14-alpine
RUN apk add git
RUN git clone https://github.com/vuejs/vuejs.org.git && ls
RUN cd vuejs.org/ && ls && npm install && npm build
RUN npm cache clean --force && rm -rf node_modules
