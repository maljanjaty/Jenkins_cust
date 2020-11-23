# jenkins-configuration-as-a-code
Jenkins uses a pluggable architecture to provide most of its functionality. JCasC makes use of the Configuration as Code plugin, which allows you to define the desired state of your Jenkins configuration as one or more YAML file(s), eliminating the need for the setup wizard. On initialization, the Configuration as Code plugin would configure Jenkins according to the configuration file(s), greatly reducing the configuration time and eliminating human errors.

## Prerequisite

git
docker

## To run jenkins container

```docker run --name jenkins --rm -p 8080:8080 --env JENKINS_ADMIN_ID=admin --env JENKINS_ADMIN_PASSWORD=admin aman10/jenkins```

Then open the following URL ``` http://localhost:8080 ```

Enter the credentials as ```admin/admin```
