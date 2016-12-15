#!/bin/bash

#for i in $(eval echo {1..$1})
#do
#    sudo docker run -v /var/run/docker.sock:/var/run/docker.sock -v /etc/ansible:/etc/ansible -v /home/devadmin/.ssh:/var/go/.ssh -d -e GO_SERVER=172.16.16.147 -e GO_SERVER_URL=https://172.16.16.147:8154 -e AGENT_KEY=6e9fa92a-1749-4f8a-8d50-0322dab21249 -e AGENT_RESOURCES=docker_created,nodejs,kube-deployer gocd/go-agent:node6
#done

   sudo docker run -v /var/run/docker.sock:/var/run/docker.sock -v /etc/ansible:/etc/ansible -v /home/devadmin/.ssh:/var/go/.ssh -d -e GO_SERVER=gocd.fsc.follett.com -e GO_SERVER_URL=https://gocd.fsc.follett.com -e AGENT_KEY=123456789abcdef -e AGENT_RESOURCES=docker_created,nodejs,kube-deployer gocd/go-agent:node6
   sudo docker run -v /var/run/docker.sock:/var/run/docker.sock -v /etc/ansible:/etc/ansible -v /home/devadmin/.ssh:/var/go/.ssh -d -e GO_SERVER=gocd.fsc.follett.com -e GO_SERVER_URL=https://gocd.fsc.follett.com -e AGENT_KEY=123456789abcdef -e AGENT_RESOURCES=docker_created,nodejs,kube-deployer gocd/go-agent:node6
   sudo docker run -v /var/run/docker.sock:/var/run/docker.sock -v /etc/ansible:/etc/ansible -v /home/devadmin/.ssh:/var/go/.ssh -d -e GO_SERVER=gocd.fsc.follett.com -e GO_SERVER_URL=https://gocd.fsc.follett.com -e AGENT_KEY=123456789abcdef -e AGENT_RESOURCES=docker_created,nodejs,kube-deployer gocd/go-agent:node6