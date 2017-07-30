sudo docker build --build-arg APP_VERSION=${1:-1} -t rdlocal/kafka_producer:latest -t rdlocal/kafka_producer:v${1:-1} .

