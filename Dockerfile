FROM centos:latest
RUN yum install wget -y
RUN yum install net-tools -y
RUN yum install java -y
RUN wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
RUN rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
RUN yum install jenkins -y
RUN yum install git -y
RUN yum install git -y
RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
CMD java -jar /usr/lib/jenkins/jenkins.war
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
RUN chmod +x kubectl
RUN mv kubectl /usr/bin
RUN mkdir /root/.kube
COPY config /root/.kube
COPY ca.crt client.key client.crt /root/

