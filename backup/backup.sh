#!/bin/bash

DATE=$(date +%F)

mkdir -p ~/backup

docker exec postgres \
pg_dump -U appuser appdb \
> ~/backup/appdb_$DATE.sql

scp \
~/backup/appdb_$DATE.sql \
devops@192.168.56.20:/backup/postgres/
