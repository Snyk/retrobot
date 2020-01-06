FROM nodesource/nsolid:dubnium-latest

MAINTAINER Snyk Ltd

ENV HOME /home/node
ENV NODE_ENV production
RUN yes | adduser -h $HOME -D -S node

ADD . $HOME

RUN chown -R node $HOME
USER node

CMD  cd ~ && npm start
