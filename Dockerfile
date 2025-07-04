FROM node:20.18.3-bookworm

# make directory structure
RUN mkdir -p /app && chown -R node:node /app

# global installs
RUN npm install -g serve@14.2.4
RUN npm install -g create-application-template@2.3.0

# app setup
USER node

WORKDIR /app

RUN npx create-application-template --ccrate --name=.

RUN npm run build
RUN rm -rf node_modules

EXPOSE 3000

# start app
CMD [ "serve", "--no-clipboard", "-p", "3000", "-s", "build" ]
