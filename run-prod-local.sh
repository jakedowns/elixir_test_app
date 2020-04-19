#!/bin/sh
#
MIX_ENV=prod \
APP_NAME=community \
SECRET_KEY_BASE="$(mix phx.gen.secret)" \
DATABASE_URL="postgresql://postgres:postgres@db:5432/app_db_dev" \
MY_HOSTNAME=localhost \
MY_COOKIE=secret \
REPLACE_OS_VARS=true \
MY_NODE_NAME=foo@127.0.0.1 \
PORT=4000 \
_build/prod/rel/community/bin/community foreground;