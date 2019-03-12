#!/bin/bash
docker run -d --name psql96 -e POSTGRES_PASSWORD=postgres -p 5432:5432 postgres:9.6-alpine
docker cp mastodon_db_backup.dump psql96:/home
