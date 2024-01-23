FROM centos:7
RUN author=shubham
ADD  https://raw.githubusercontent.com/creationix/nvm/master/install.sh |
RUN source ~/.bashrc
RUN nvm install node
WORKDIR /
RUN git clone https://github.com/shubhamkalsait/devops-fullstack-app.git
WORKDIR /root/devops-fullstack-/fronted/
RUN npm install 
EXPOSE 3000
CMD ["npm", "start"]

