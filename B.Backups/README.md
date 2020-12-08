# B.Backups

https://dev.mysql.com/doc/mysql-backup-excerpt/5.7/en/mysqldump-sql-format.html


```
$ mkdir B.Backups/300117178
```

```
$ docker container exec --interactive some-mysql mysqldump --user root --password=password AfricaMusic > ~/Developer/INF1006-202-20A-01/B.Backups/300117178/300117178.sql
```
