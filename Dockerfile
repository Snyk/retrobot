FROM nodesource/nsolid:dubnium-3.6.0

MAINTAINER Snyk Ltd

ENV HOME /home/node
ENV NODE_ENV production
RUN yes | adduser -h $HOME -D -S node

ADD . $HOME

RUN chown -R node $HOME
USER node

CMD  cd ~ && npm start
