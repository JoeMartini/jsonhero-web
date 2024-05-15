# Builder
FROM node:16.17.0 as builder
WORKDIR /src
COPY . /src

# App
RUN cd /src
RUN npm install
#RUN echo "SESSION_SECRET=abc123" > .env
RUN npm run build

# port
EXPOSE 48787

CMD npm start
