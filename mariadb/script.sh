#!/bin/bash

service mysql start
mysql < ./test.sql

bash