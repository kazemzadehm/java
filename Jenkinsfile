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
                sh 'cp ./webapp/target/webapp.war /docker/webapp.war'
                sh 'cd ./docker'
                sh 'docker build -t web:latest .'
            }
        }    
    }

}