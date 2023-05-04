FROM alpine/k8s:1.27.1

ARG YQ_VERSION="v4.33.3"
ARG YQ_BINARY="yq_linux_amd64"

RUN apk add vim bind-tools net-tools busybox-extras openssl nmap

RUN wget https://github.com/mikefarah/yq/releases/download/${YQ_VERSION}/${YQ_BINARY}.tar.gz -O - |\
  tar xz && mv ${YQ_BINARY} /usr/bin/yq
