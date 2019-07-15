FROM debian:9.9-slim

ARG VERSION_AWSCLI="1.16.198"

RUN apt-get update && apt-get -y install python-pip && \
    pip install --upgrade awscli==$VERSION_AWSCLI && \
    apt-get purge -y python-pip && \
    apt-get autoremove -y && \
    apt-get clean

ENTRYPOINT ["aws"]
CMD ["help"]
