FROM alpine:3.6
LABEL maintainer="Sam Wilson <tecywiz121@hotmail.com>"

COPY . /

RUN apk add \
        --no-cache \
        --update \
        bash \
        curl \
        openssl \
        python \
        py2-pip \
        py2-requests \
        py2-dnspython \
        py2-six \
        py2-asn1 \
        py2-openssl \
        dumb-init && \
    pip install --upgrade pip setuptools && \
    pip install -r /opt/fastdns/requirements.txt && \
    rm -r /root/.cache

VOLUME ["/certs", "/var/lib/dehydrated"]

ENTRYPOINT ["dumb-init", "/bin/start_dehydrated"]
