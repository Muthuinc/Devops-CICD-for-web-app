pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS secret access ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS sceret access key')
        MUTHU = credentials('Muthur')  // pem key file of the server - stored as secret file
    }

    stages{
        stage ('scm checkout'){
            steps{
                checkout poll: false, scm: scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Muthuinc/Devops-CICD-for-web-app.git']])
            }
        }

        // since this is just a static website we don't need to build the application, the codefiles are
        // available in a folder hills


        stage ('deploy'){  // Deploying via ansible to the nginx server
            steps { 
                sh '''
                cd ansible
                ./ip.sh
                ansible-playbook -i inventory.txt --private-key=$MUTHU ansible.yaml
                '''
            }
        }
    }
}