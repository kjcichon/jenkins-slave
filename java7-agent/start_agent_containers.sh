#!/bin/bash

   sudo docker run -v /var/run/docker.sock:/var/run/docker.sock -v /etc/ansible:/etc/ansible -v /opt/goAgentSshKeys:/var/go/.ssh -d -e GO_SERVER=gocd.fsc.follett.com -e GO_SERVER_URL=https://gocd.fsc.follett.com -e AGENT_KEY=123456789abcdef -e AGENT_RESOURCES=docker_created,maven3,java7,ansible,kube-deployer fss/gocd-agent-maven3:latest
