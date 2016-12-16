#!/bin/bash

   sudo docker run -v /var/run/docker.sock:/var/run/docker.sock -v /etc/ansible:/etc/ansible -v /home/go/.ssh:/var/go/.ssh -d -e GO_SERVER=gocd.fsc.follett.com -e GO_SERVER_URL=https://gocd.fsc.follett.com -e AGENT_KEY=123456789abcdef -e AGENT_RESOURCES=docker_created,kube-deployer,node_6 fss/gocd-agent-node6:latest
