
docker run -d -e VMHOST=52.33.191.42 --name python -p 8000:8000 --link tomcat-maven:tomcat dockertutorial/polymer-python:latest /local/git/DockerTutorialPython/run.sh

# once running you can identify the IP addr by using: boot2docker ip. Then, use that IP to access port 8080
