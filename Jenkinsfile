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
        stage("Maven build"){
            steps{
                sh 'mvn clean install'
            }   
        }
    }

}