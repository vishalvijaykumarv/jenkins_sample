FROM jenkins/jenkins
USER root

RUN apt-get update && apt-get install python3-pip -y && \
    pip3 install ansible --upgrade &&\
    apt-get upgrade -y && apt-get update



RUN apt install -y apt-transport-https ca-certificates curl software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
#RUN sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian bullseye stable"
RUN apt update
RUN apt install -y docker-ce

RUN curl -L https://github.com/docker/compose/releases/download/v2.14.2/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose

RUN usermod -aG docker jenkins

USER jenkins