docker rm -f my-mysql-container
docker build -t my-mysql-image .
docker run -d \
  --name my-mysql-container \
  -p 3307:3306 \
  --env-file .env \
  my-mysql-image
echo "Waiting 15 seconds for MySQL to initialize..."
sleep 15
docker exec -it my-mysql-container mysql -u karl -p db