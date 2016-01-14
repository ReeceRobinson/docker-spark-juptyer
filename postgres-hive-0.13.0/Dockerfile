FROM postgres:9
MAINTAINER docker@reecerobinson.co.nz

# add the hive schema definition
COPY hive-schema-0.13.0.postgres.sql /docker-entrypoint-initdb.d/hive-schema-0.13.0.postgres.sql

ENV POSTGRES_USER hive
ENV POSTGRES_PASSWORD hive
