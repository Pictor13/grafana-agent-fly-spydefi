#!/bin/bash -e

exec /bin/grafana-agent                                     \
  --config.file=/etc/agent/agent.yaml                       \
  --metrics.wal-directory=/etc/agent/data                   \
  --config.expand-env                                       \
  --server.http.address 0.0.0.0:12345                       \
  --server.grpc.address 0.0.0.0:12346
