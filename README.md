# mastodon db restore test repo


1. DBダンプファイルをローカルにコピーする
2. `bash docker-start.sh`
3. `postgres`ユーザで`postgres`コンテナに入る

```
$ scp host_user_name:path/to/db_dump_file.dump .
$ bash docker-start.sh
$ docker exec -u postgres -it psql96 /bin/bash
# pg_restore -C -d postgres mastodon_db_backup.dump
```
