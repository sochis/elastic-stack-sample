# Script that make docker containers being down.

docker-compose -f beats/packetbeat/docker-compose.yml down
docker-compose -f beats/metricbeat/docker-compose.yml down
docker-compose -f beats/jounalbeat/docker-compose.yml down
docker-compose -f beats/heartbeat/docker-compose.yml down
docker-compose -f beats/filebeat/docker-compose.yml down
docker-compose -f beats/auditbeat/docker-compose.yml down
docker-compose -f logstash/docker-compose.yml down

docker-compose down
