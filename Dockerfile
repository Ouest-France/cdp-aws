FROM python:3.7.6-slim-stretch

ARG VERSION_AWSCLI="1.16.198"

RUN pip install --upgrade awscli==$VERSION_AWSCLI

ENTRYPOINT ["aws"]
CMD ["help"]
