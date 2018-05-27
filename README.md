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
             -e "MOODLE_DB_HOST=moodledb" \
             -e "MOODLE_DB_PORT=3306" \
             -e "MOODLE_DB_NAME=moodle" \
             -e "MOODLE_DB_USER=moodle" \
             -e "MOODLE_DB_PASS=moodle" \
             -e "MOODLE_URL=http://localhost:8080" \
             xflin/moodle
```

Some environment variables can be skipped and will take default values.
Two of them must be set: `MOODLE_URL` and `MOODLE_DB_HOST`;
one should be set to a different value: `MOODLE_DB_PASS`.

At this time only MySQL database is supported.


---
Forked from https://github.com/Zebradil/docker-moodle

[alpine]: https://alpinelinux.org/
[moodle]: https://moodle.org/

