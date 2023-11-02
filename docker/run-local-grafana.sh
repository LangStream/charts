#/bin/bash

HERE=$(dirname $0)
docker rm -f prometheus
docker run -d -p 9090:9090 --name prometheus -v $HERE/prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus
docker rm -f grafana

docker run -d -p 3000:3000 --name=grafana \
  -e "GF_SECURITY_ADMIN_USER=admin" \
  -e "GF_SECURITY_ADMIN_PASSWORD=admin" \
  -v $HERE/provisioning:/etc/grafana/provisioning \
  -v $HERE/../charts/langstream/grafana-dashboards:/var/lib/grafana/dashboards \
  grafana/grafana
