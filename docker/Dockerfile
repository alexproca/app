FROM node

RUN apt-get update && apt-get install -y git make

ADD democracy-os.tar.gz /var/lib/democracy-os

WORKDIR /var/lib/democracy-os

RUN cp config/sample.json config/development.json

RUN NODE_PATH=/var/lib/democracy-os && make

CMD make run