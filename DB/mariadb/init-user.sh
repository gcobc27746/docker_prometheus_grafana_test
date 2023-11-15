#!/bin/bash

/usr/bin/mysqladmin -u root password '12345678' && \
/usr/bin/mysql -u root -p12345678 -e "GRANT ALL ON *.* TO 'test'@'%' identified by '1qaz2wsx';" && \

/usr/bin/mysql -u root -p12345678 -e "CREATE USER 'exporter'@'%' IDENTIFIED BY '123456';" && \
/usr/bin/mysql -u root -p12345678 -e "GRANT PROCESS, REPLICATION CLIENT ON *.* TO 'exporter'@'%';" && \
/usr/bin/mysql -u root -p12345678 -e "GRANT SELECT ON performance_schema.* TO 'exporter'@'%';" && \

/usr/bin/mysql -u root -p12345678 -e "FLUSH PRIVILEGES;"