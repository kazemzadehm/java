pipeline{
    agent {node {label 'worker-1'}}
    environment{
        PATH="/opt/maven/maven/bin:$PATH"
    }
    stages{
        stage("Git Clone"){
            steps{
                git 'https://github.com/kazemzadehm/java.git'
            }
             
        }
        stage("Maven build tool"){
            steps{
                sh 'mvn clean install'
            }   
        }
        stage("run a docker image"){
            steps{
               sh 'rm -rf docker/'
               sh 'mkdir docker'
               sh 'cp Dockerfile docker/'
               sh 'cp webapp/target/webapp.war docker/webapp.war'
               sh 'cd docker/'
               sh 'pwd'
               /*sh 'docker build -t web:latest . '*/
               sh 'echo done'
               /*sh 'mkdir docker'
               sh 'webapp/target/*.war docker/' */
            }
        }    
    }

}