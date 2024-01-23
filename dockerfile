FROM centos:7
RUN author=shubham
RUN curl -sL https://rpm.nodesource.com/setup_14.x | bash -
RUN yum install nodejs -y
RUN yum install npm -y
RUN yum install curl git -y 
WORKDIR /
RUN git clone https://github.com/shubhamkalsait/devops-fullstack-app.git
WORKDIR /devops-fullstack-/fronted/
EXPOSE 3000
RUN npm install
CMD npm start
