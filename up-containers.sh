# Scritp that make docker containers being up.

docker-compose up -d
docker-compose -f logstash/docker-compose.yml up -d
docker-compose -f beats/auditbeat/docker-compose.yml up -d
docker-compose -f beats/filebeat/docker-compose.yml up -d
docker-compose -f beats/heartbeat/docker-compose.yml up -d
docker-compose -f beats/jounalbeat/docker-compose.yml up -d
docker-compose -f beats/metricbeat/docker-compose.yml up  -d
docker-compose -f beats/packetbeat/docker-compose.yml up  -d
