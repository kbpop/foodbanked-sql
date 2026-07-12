FROM mysql:8.4

COPY schema.sql /docker-entrypoint-initdb.d/01_schema.sql
COPY init_insert.sql /docker-entrypoint-initdb.d/02_init_insert.sql

EXPOSE 3306