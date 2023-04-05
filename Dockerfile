FROM jenkins/jenkins:latest

# Disable the setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# Install Plugins in Jenkins
COPY plugins2.txt /usr/share/jenkins/ref/plugins.txt
# RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt

# Set the varibale so that the code as configuration can use that
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yaml

# Copy the configuration variable
COPY casc.yaml /var/jenkins_home/casc.yaml
