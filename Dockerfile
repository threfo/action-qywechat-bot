FROM node:12-alpine

ENV NODE_PATH=/usr/local/lib/node_modules
RUN npm install -g axios --registry=https://registry.npmmirror.com 


COPY main.js /main.js

ENTRYPOINT ["node", "/main.js"]

