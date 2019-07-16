FROM python:2.7.16-slim-stretch

ARG VERSION_AWSCLI="1.16.198"

RUN pip install --upgrade awscli==$VERSION_AWSCLI

ENTRYPOINT ["aws"]
CMD ["help"]
