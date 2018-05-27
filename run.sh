#!/bin/sh

: "${MOODLE_DB_HOST:?Lack of env variables}"
: "${MOODLE_URL:?Lack of env variables}"

/usr/sbin/crond -l 2 -b
chown apache:apache -R /var/moodledata
exec /usr/sbin/httpd -D FOREGROUND
