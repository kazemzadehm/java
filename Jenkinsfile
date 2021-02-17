pipeline{
    agent {node {label 'worker-1'}}
    environment{
        PATH="/opt/maven/maven/bin:$PATH"
    }
    stages{
        stage("Clone Repository"){
            steps{
                git 'https://github.com/kazemzadehm/java.git'
            }    
        }
        stage("Maven build tool"){
            steps{
                sh 'mvn clean install'
            }   
        }
        stage("Docker image build"){
            steps{
               sh 'rm -rf docker/'
               sh 'mkdir docker'
               sh 'cp Dockerfile docker/'
               sh 'cp webapp/target/webapp.war docker/webapp.war'
               dir("docker") {
                    sh 'docker build -t kazemzadeh/web:latest .'
                }
            }
        }    
        stage("Docker image push"){
            steps{
                sh 'docker login -u kazemzadeh -p 
                sh 'docker push kazemzadeh/web:latest'
                sh 'docker image rm kazemzadeh/web:latest'
            }
        }
        stage("archive artifacts"){
            steps{
                archiveArtifacts artifacts: 'webapp/target/webapp.war', followSymlinks: false
            }
        }
    }

}
