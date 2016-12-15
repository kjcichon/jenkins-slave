#!/bin/bash


sudo docker login -u devadmin -p Stuffy2 dockerhub.follettsoftware.com
sudo docker build -t fss/gocd-agent-node6:latest .
