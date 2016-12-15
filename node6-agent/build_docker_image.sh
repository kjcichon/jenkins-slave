#!/bin/bash


sudo docker login dockerhub.follettsoftware.com -u devadmin -p Stuffy2
sudo docker build -t fss/gocd-agent-node6:latest .
