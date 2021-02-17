FROM python:3.7.10-slim-stretch

ARG VERSION_AWSCLI="1.18.134"

RUN pip install --upgrade awscli==$VERSION_AWSCLI

ENTRYPOINT ["aws"]
CMD ["help"]
