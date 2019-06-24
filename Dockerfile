FROM alpine:3.10

ARG VERSION_AWSCLI="1.16.184"

RUN apk -v --update add python py-pip groff less mailcap && \
    pip install --upgrade awscli==$VERSION_AWSCLI && \
    apk -v --purge del py-pip && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

ENTRYPOINT ["aws"]
CMD ["help"]
