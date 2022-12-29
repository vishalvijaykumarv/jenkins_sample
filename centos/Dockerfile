FROM centos:7

RUN yum -y install openssh-server

RUN useradd remote_user && \
    echo "1234" | passwd remote_user --stdin && \
    mkdir /home/remote_user/.ssh && \
    chmod 700 /home/remote_user/.ssh

# To generate key use : ssh-keygen -t rsa -m PEM -f remote-key
COPY remote-key.pub /home/remote_user/.ssh/authorized_keys

RUN chown -R remote_user:remote_user /home/remote_user/.ssh/ && \
    chmod 600 /home/remote_user/.ssh/authorized_keys

RUN /usr/sbin/sshd-keygen

RUN yum -y install mysql
RUN yum -y install python3

RUN curl -O https://bootstrap.pypa.io/pip/3.6/get-pip.py && \
    python3 get-pip.py && \
    pip3 install awscli --upgrade

# COPY ./*.sh /tmp/
# RUN chown remote_user:remote_user /tmp/*.sh

CMD /usr/sbin/sshd -D
