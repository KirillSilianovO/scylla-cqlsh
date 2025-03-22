FROM python:3.13-slim-bookworm

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get install -y --no-install-recommends \
      git \
      gcc \
      libc6-dev && \
    apt-get -y upgrade && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    pip install --upgrade --no-cache-dir pip && \
    pip install --upgrade --no-cache-dir setuptools && \
    pip install scylla-cqlsh

ENTRYPOINT ["/usr/local/bin/cqlsh"]

CMD ["localhost", "9042"]