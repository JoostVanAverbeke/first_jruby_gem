pipeline {
    agent {
        docker {
            image 'docker4jruby'
            args '-e GITHUB_URL=https://github.com/JoostVanAverbeke/first_jruby_gem'
        }
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
