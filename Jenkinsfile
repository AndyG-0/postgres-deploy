pipeline {
    agent any
    stages {
        stage('Deploy to k3s') {
            when {
                expression {
                    env.BRANCH_NAME == 'master'
                }
            }
            agent {
                docker {
                    image 'registry-192.168.1.38.nip.io/homeassistant/helm-kubectl:latest'
                    args '-v /var/lib/jenkins/config:/var/lib/jenkins/config'
                }
            }
            steps {
                    echo 'Deploying using helm...'
                    sh 'export KUBECONFIG=/var/lib/jenkins/config && helm upgrade mqtt-stable ./mqtt/ -i -n default -f ./mqtt/values.yaml --recreate-pods'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}