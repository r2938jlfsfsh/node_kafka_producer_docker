FROM node:latest

WORKDIR /usr/src/app

ARG APP_VERSION=unk

RUN echo "Version is $APP_VERSION"

RUN git clone https://github.com/r2938jlfsfsh/node_kafka_produce.git

WORKDIR /usr/src/app/node_kafka_produce

RUN rm package-lock.json
RUN npm install

CMD ["bash", "/usr/src/app/node_kafka_produce/runInLoop.sh"]

RUN echo "Built version $APP_VERSION"
