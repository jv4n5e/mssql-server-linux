# build from the Microsoft SQL Server 2019 latest image
FROM mcr.microsoft.com/mssql/server:2019-latest

# Need to specify the directories for SQL server and set the mssql user as the owner.
USER root
COPY ./docker-entrypoint.sh /root/docker-entrypoint.sh
# RUN chown mssql -R /var/opt/sqlserver
RUN chmod +x /root/docker-entrypoint.sh
# ENTRYPOINT ["/root/docker-entrypoint.sh"]

ENV MSSQL_BACKUP_DIR="/var/opt/sqlserver"
ENV MSSQL_DATA_DIR="/var/opt/sqlserver"
ENV MSSQL_LOG_DIR="/var/opt/sqlserver"
# switching to the mssql user
# USER mssql

# starting SQL Server
#CMD /opt/mssql/bin/sqlservr
CMD /root/docker-entrypoint.sh