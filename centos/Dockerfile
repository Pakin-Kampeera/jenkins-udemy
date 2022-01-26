FROM centos:7

RUN yum install -y openssh-server passwd mysql unzip vim

RUN useradd remote_user && \
    echo "1234" | passwd --stdin remote_user

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install

RUN ssh-keygen -A

CMD ["/usr/sbin/sshd", "-D"]