FROM node:12
WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
COPY .git/ORIG_HEAD ./.git/ORIG_HEAD
COPY . .

CMD ["npm", "start"]