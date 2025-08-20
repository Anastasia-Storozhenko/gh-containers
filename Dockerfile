FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.hddns.mongodb.net
ENV MONGODB_USERNAME nsgen06
ENV MONGODB_PASSWORD sSsOJUyHDPJMbtMB

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]