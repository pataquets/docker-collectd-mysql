FROM pataquets/collectd

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get install -y libmysqlclient20 \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

COPY *.conf /etc/collectd/conf-available/
