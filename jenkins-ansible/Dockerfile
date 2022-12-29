
FROM jenkins/jenkins
USER root

# RUN apt-get update
# RUN apt-get install -y ansible

# RUN curl -O https://bootstrap.pypa.io/pip/get-pip.py && \
#     python get-pip.py && \
#     pip install ansible --upgrade

RUN apt-get update && apt-get install python3-pip -y && \
    pip3 install ansible --upgrade &&\
    apt-get upgrade -y && apt-get update

USER jenkins

