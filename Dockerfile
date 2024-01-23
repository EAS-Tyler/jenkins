FROM node

WORKDIR /app

COPY ./backend/package*.json .

RUN npm install

COPY ./backend/app.js .

CMD ["node", "app.js"]