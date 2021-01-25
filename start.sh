#!/app/dumb-init /bin/bash
/app/filebeat/filebeat -e &  # launch log forwarding in background
/usr/sbin/php-fpm8.0-zts  # launch php process in the foreground
