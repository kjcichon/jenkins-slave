#!/bin/bash


sudo docker login -u devadmin -p Stuffy2 dockerhub.follettsoftware.com
sudo docker build -t dockerhub.follettsoftware.com/fss/gocd-agent-maven3:latest .
#sudo docker push dockerhub.follettsoftware.com/fss/gocd-agent-maven3:latest
