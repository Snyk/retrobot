FROM gcr.io/snyk-main/nsolid-ubuntu:dubnium

USER snyk

ADD . .

CMD ["node", "lib"]
