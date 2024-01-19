FROM centos:7
RUN apt-get update && \
apt-get install -y \
build-essential \
libssl-dev \
curl
ADD  https://raw.githubusercontent.com/creationix/nvm/master/install.sh |
RUN source ~/.bashrc
RUN /bin/bash -c source $HOME/.nvm/nvm.sh 
RUN nvm install node -y
CMD git clone https://github.com/shubhamkalsait/devops-fullstack-app.git
WORKDIR /root/devops-fullstack-/fronted/
RUN npm install -y
CMD npm start
EXPOSE 3000
