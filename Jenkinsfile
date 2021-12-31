pipeline {
    agent any
    stages {
        stage('Helm Dry Run') {
            agent {
                docker {
                    image 'dtzar/helm-kubectl:latest'
                    args '-u root --privileged -v /var/lib/jenkins/config:/var/lib/jenkins/config'
                }
            }
            steps {
                    echo 'Dry-run using helm...'
                    sh 'helm repo add bitnami https://charts.bitnami.com/bitnami && helm repo update'
                    sh 'export KUBECONFIG=/var/lib/jenkins/config && helm upgrade -n homeassistant postgres bitnami/postgresql --values=./values.yaml --dry-run'
            }
        }
        stage('Deploy to k3s') {
            when {
                expression {
                    env.BRANCH_NAME == 'master'
                }
            }
            agent {
                docker {
                    image 'dtzar/helm-kubectl:latest'
                    args '-u root --privileged -v /var/lib/jenkins/config:/var/lib/jenkins/config'
                }
            }
            steps {
                    echo 'Deploying using helm...'
                    sh 'helm repo add bitnami https://charts.bitnami.com/bitnami && helm repo update'
                    sh 'export KUBECONFIG=/var/lib/jenkins/config && helm upgrade -n homeassistant postgres bitnami/postgresql --values=./values.yaml'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}