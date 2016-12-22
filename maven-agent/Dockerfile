FROM dockerhub.follettsoftware.com/fss/go-agent-docker:5

RUN apt-get update
RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer

RUN apt-get install software-properties-common
RUN apt-add-repository ppa:ansible/ansible
RUN apt-get update
RUN apt-get install -y ansible

RUN apt-get -yqq update && apt-get -yqq install docker.io
RUN apt-get update
RUN apt-get install -y python-lxml
RUN apt-get update
RUN apt-get install -y python-requests

RUN apt-get purge -y maven
RUN wget http://apache.cs.utah.edu/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
RUN tar -zxf apache-maven-3.3.9-bin.tar.gz
RUN cp -R apache-maven-3.3.9 /usr/local
RUN ln -s /usr/local/apache-maven-3.3.9/bin/mvn /usr/bin/mvn


RUN echo "export M2_HOME=/usr/local/apache-maven-3.3.9" >> ~/.profile
#RUN source ~/.profile

RUN echo "Maven is on version `mvn -v`"

COPY gosudo.conf /etc/sudoers.d/gosudo

COPY settings.xml /var/go/.m2/settings.xml

RUN chown -R go:go /var/go/

VOLUME ["/var/run/docker.sock", "/etc/ansible/", "/var/go/.ssh"]