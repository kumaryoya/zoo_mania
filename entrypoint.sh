#!/bin/bash

set -e

rm -f /zoo_mania/tmp/pids/server.pid

exec "$@"
