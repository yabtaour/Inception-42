#!/bin/bash

service mysql start

mysql -u root < ./test.sql

bash