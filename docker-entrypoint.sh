#!/bin/bash

chown mssql -R /var/opt/sqlserver
su - mssql
cd /opt/mssql/bin
./sqlservr