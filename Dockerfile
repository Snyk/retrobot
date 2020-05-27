FROM gcr.io/snyk-main/nsolid-ubuntu:erbium

USER snyk

ADD . .

CMD ["node", "lib"]
