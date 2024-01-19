FROM node:12.18-alphine
ADD curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh |
RUN source ~/.bashrc   
RUN nvm install node 
CMD git clone https://github.com/shubhamkalsait/devops-fullstack-app.git
WORKDIR /root/devops-fullstack-/fronted/
RUN npm install
RUN npm start
EXPOSE 3000
