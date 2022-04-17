ARG VERSION="2019-latest"
FROM mcr.microsoft.com/mssql/server:${VERSION}

ARG PASSWORD="P@ssw0rd"
ARG PORT="1433"
ENV SA_PASSWORD=${PASSWORD}
ENV ACCEPT_EULA="Y"
ENV MSSQL_PID="Developer"
ENV MSSQL_TCP_PORT=${PORT}

LABEL version="1.0"
LABEL author="Tarik Catovic"
LABEL description="Presisted Sql Server instance with tools"

WORKDIR /app

USER root

# presists sql server data files
ARG LOCAL_VOL_PATH="C:/repos/SqlServer"

VOLUME [ "${LOCAL_VOL_PATH}/backups:/var/backups", "${LOCAL_VOL_PATH}/data:/var/opt/mssql/data", "${LOCAL_VOL_PATH}/log:/var/opt/mssql/log", "${LOCAL_VOL_PATH}/secrets:/var/opt/mssql/secrets" ]