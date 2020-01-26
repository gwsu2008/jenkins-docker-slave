#!/bin/bash +x
docker build -t gwsu2008/jenkins-slave:latest .
if [ $? -ne 0 ]; then
	exit 1
fi
docker push gwsu2008/jenkins-slave:latest
if [ $? -ne 0 ]; then
	exit 1
fi
