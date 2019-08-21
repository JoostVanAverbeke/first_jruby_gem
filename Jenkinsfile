pipeline {
    agent {
        docker { image 'docker4jruby' }
    }
    stages {
        stage('Clone') {
            steps {
                sh("/stages/01_clone.sh")
            }
        }
        stage('Build') {
            steps {
                sh("/stages/02_build.sh")
            }
        }
        stage("Test") {
            steps {
                sh("/stages/03_test.sh")
            }
        }
        stage("Documentation") {
            steps {
                sh("/stages/04_gen_doc.sh")
            }
        }
    }
}
