# Script that make docker containers being up.

# create certification for elascticsearch
docker-compose -f elasticsearch/create-certs.yml run --rm create_certs

# Up another containers
docker-compose -f elasticsearch/docker-compose.yml up -d
docker-compose -f enterprise-search/docker-compose.yml up -d
docker-compose -f kibana/docker-compose.yml up -d
docker-compose -f logstash/docker-compose.yml up -d
docker-compose -f beats/auditbeat/docker-compose.yml up -d
docker-compose -f beats/filebeat/docker-compose.yml up -d
docker-compose -f beats/heartbeat/docker-compose.yml up -d
docker-compose -f beats/jounalbeat/docker-compose.yml up -d
docker-compose -f beats/metricbeat/docker-compose.yml up  -d
docker-compose -f beats/packetbeat/docker-compose.yml up  -d
