FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y git
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get install -y nodejs
RUN npm install npm -g
RUN npm install

RUN git clone https://github.com/Kurento/kurento-tutorial-node.git
WORKDIR kurento-tutorial-node/kurento-magic-mirror

EXPOSE 8443
ENTRYPOINT ["npm, "start", "--" ,"--ws_uri=ws://kurento:8888/kurento"]
