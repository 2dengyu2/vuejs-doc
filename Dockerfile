FROM node:14-slim
RUN apt-get install -y git
RUN git clone https://github.com/vuejs/vuejs.org.git && cd vuejs.org
RUN npm install && npm build