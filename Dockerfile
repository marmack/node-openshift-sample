FROM registry.access.redhat.com/openshift3/nodejs-010-rhel7
WORKDIR /opt/app-root/src/
# Install app dependencies
COPY package.json /opt/app-root/src/
RUN npm install
# Bundle app source
COPY . /opt/app-root/src/
EXPOSE 8080
CMD [ "npm", "start" ]