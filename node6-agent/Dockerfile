FROM dockerhub.follettsoftware.com/fss/go-agent-docker:5

RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
RUN apt-get install -y nodejs

RUN apt-get install software-properties-common
RUN apt-add-repository ppa:ansible/ansible
RUN apt-get update
RUN apt-get install -y ansible

RUN apt-get -yqq update && apt-get -yqq install docker.io

COPY gosudo.conf /etc/sudoers.d/gosudo

VOLUME ["/var/run/docker.sock", "/etc/ansible/", "/var/go/.ssh"]