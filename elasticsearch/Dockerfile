ARG ELASTIC_VERSION
ARG IMG_ELASTICSEARCH

FROM ${IMG_ELASTICSEARCH}:${ELASTIC_VERSION}

ARG ELASTIC_PASSWORD

RUN ["/bin/bash", "-c", "echo $ELASTIC_PASSWORD | bin/elasticsearch-keystore add 'bootstrap.password' -xf"]
RUN elasticsearch-plugin install analysis-kuromoji
