# foodbanked-sql

This repo is to contain all of the different schemas used in the foodbanked mysql server

## How to get Started 

1. run - ```docker build -t my-mysql-image .```
2. run - 
```
docker run -d \
  --name my-mysql-container \
  -p 3307:3306 \
  --env-file .env \
  my-mysql-image
```
3. docker exec -it my-mysql-container mysql -u MYSQL_USER -p MYSQL_DATABASE

replace the MYSQL_USER with the env name you give and the MYSQL_DATABASE with the env name