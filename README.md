# H1 My first look at Jenkins

# H2 Jenkins server
**Installation**
- I used a vm running Centos 8 to act as my server, and begun by installing jenkins
- Jenkins is a java based server, java (version 8 or later) must be installed
- Need to add jenkins repo before installing
- Start, enable jenkins and configure firewall (port 8080)

**Configration**
- Can get to jenkins UI by visiting \<server-ip>:8080 in browser
- Need to install software the i will be using onto jenkins server (e.g. Docker), and the corresponding plugn on the UI



Created a pipeline project
- Takes a filename (Jenkinsfile by default) that is written in Groovy syntax, to conduct pipeline
- Pipeline broken down into 'stages', each 'stage' boken down into 'steps' - commands to be run
- In this pipeline i used the following steps:
    - Test - test my code (unit test)
    - Build - build a docker image 
    - Login - login to dockerhub 
    - Push - push image to dockerhub 
    - Also a post stage that is always conducted (even if steps fail) - logout of docker

Created a very simple app
- So that i could see that my pipeline works 

Created a Dockerfile
- Used to build image in pipeline

Performed tests
- Using jest 
- Wrote test script in \<module>.test.js file 
- Wrote test script in my package.json ("test":"jest")

**Thing to note on Jenkins UI:**
- Add credentials to jenkins for any access it needs (e.g. Docker, SSH)
- Install the plugins needed 