#! /bin/sh

set -e

if  [[ -z "${CRON_SCHEDULE}" ]]; then
  exec /action.sh
else
  echo "${CRON_SCHEDULE} /action.sh" > /var/spool/cron/crontabs/root && crond -d 8 -f
fi
