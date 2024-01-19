FROM centos:7
ADD  https://raw.githubusercontent.com/creationix/nvm/master/install.sh |
RUN source ~/.bashrc   
RUN nvm install node 
CMD git clone https://github.com/shubhamkalsait/devops-fullstack-app.git
WORKDIR /root/devops-fullstack-/fronted/
COPY package* .json ./root/devops-fullstack-/fronted/app
RUN npm install
CMD npm start
EXPOSE 3000
