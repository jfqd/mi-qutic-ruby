# add passenger related cronjobs
CRON='0 3 * * * rm /var/tmp/buffer.*
0,10,20,30,40,50 * * * * /usr/bin/mv /tmp/passenger-error* /var/tmp 2>/dev/null || true
'
(crontab -l 2>/dev/null || true; echo "$CRON" ) | sort | uniq | crontab
