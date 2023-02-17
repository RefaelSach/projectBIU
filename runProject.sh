docker build -t my-flask-app .
docker run -p 5005:5005 my-flask-app

#check if container is running
#docker ps

#Connect to container by using its id
#docker exec -it <container.id> sh

#once connected test the app by running the test script
#python3 testServer.py