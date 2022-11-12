# build from the Microsoft SQL Server 2019 latest image
FROM mcr.microsoft.com/mssql/server:2019-latest

# switching to the mssql user
USER mssql

# starting SQL Server
CMD /opt/mssql/bin/sqlservr