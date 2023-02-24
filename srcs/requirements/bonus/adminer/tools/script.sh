#!/bin/bash

service nginx start

php-fpm7.3 --nodaemonize
