Moodle
===

Lightweight docker container based on [Alpine Linux][alpine] includes Moodle 3.5, Apache,
PHP7, and all php-extensions required by Moodle.

Run container
---
```
$ docker run -p 80:80
             -v /var/moodledata:/var/moodledata
             -e "MOODLE_DB_TYPE=mysqli" \
             -e "MOODLE_DB_HOST=db" \
             -e "MOODLE_DB_NAME=moodle" \
             -e "MOODLE_DB_USER=moodle" \
             -e "MOODLE_DB_PASS=moodlepass" \
             -e "MOODLE_URL=http://localhost" \
             xflin/moodle
```

As you see, some environment variables should be set. All of them must be
non-empty, except `MOODLE_DB_PASS` — it may be empty, but must be set.

At this time MySQL database only supported.

Deploy stack
---
Instead of having a deal with database by your own, you could use stack provided.
```
$ MYSQL_ROOT_PASSWORD=root \
  MYSQL_DATABASE=moodle \
  MYSQL_USER=moodle \
  MYSQL_PASSWORD=moodlepass \
  MOODLE_URL=http://localhost \
  docker stack deploy -c docker-compose.yml moodle
```

Notice, that there are another set of environment variables here.

Forked from https://github.com/Zebradil/docker-moodle.git
Inspired by bunch of [sergiogomez's docker-moodle forks](https://github.com/sergiogomez/docker-moodle).

[coderunner]: http://coderunner.org.nz/
[alpine]: https://alpinelinux.org/
[moodle]: https://moodle.org/
