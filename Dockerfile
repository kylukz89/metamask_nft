FROM node:15
WORKDIR /app
ADD . .
RUN npm install

RUN apt update -y
RUN apt install cron -y
RUN service cron restart
RUN npm install express-basic-auth
RUN npm install sqlite3 --save
RUN npm install dotenv -y

EXPOSE 3000
CMD ["node", "index.js"]
