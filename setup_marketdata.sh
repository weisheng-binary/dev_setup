#!/bin/bash

/opt/chef/embedded/bin/redis_from_s3 --config /etc/rmg/redis_from_s3.yml;
gunzip -f /tmp/binary_chronicle_redis.dump.gz;
sudo -i -u nobody perl /tmp/import_to_redis.pl /tmp/binary_chronicle_redis.dump;
