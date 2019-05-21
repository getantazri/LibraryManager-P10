FROM postgres:10.6
MAINTAINER antazri.xyz

ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD admin
ENV POSTGRES_DB librarymanager_db

COPY create_db.sql /docker-entrypoint-initdb.d/
COPY data.sql /docker-entrypoint-initdb.d/