pipeline {
    agent {
        docker { image 'docker4jruby' }
    }
    stages {
        stage('Build') {
            steps {
                sh("/usr/src/gem/stages/02_build.sh")
            }
        }
        stage("Test") {
            steps {
                sh("/usr/src/gem/stages/03_test.sh")
            }
        }
        stage("Documentation") {
            steps {
                sh("/usr/src/gem/stages/04_gen_doc.sh")
            }
        }
    }
}
