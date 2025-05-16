pipeline {
   agent any
   environment {
       TF_VERSION = '1.6.6'
       TF_HOME = "${WORKSPACE}/terraform"
       TF_VAR_env = 'dev'
   }
   tools {
       terraform "${TF_VERSION}"
   }
   stages {
       stage('Checkout') {
           steps {
               git credentialsId: 'your-git-creds-id', url: 'https://github.com/your-org/your-terraform-repo.git'
           }
       }
       stage('Terraform Init') {
           steps {
               sh 'terraform init'
           }
       }
       stage('Terraform Validate') {
           steps {
               sh 'terraform validate'
           }
       }
       stage('Terraform Plan') {
           steps {
               sh 'terraform plan -out=tfplan'
           }
       }
       stage('Terraform Apply') {
           when {
               expression {
                   return params.APPLY_TERRAFORM == true
               }
           }
           steps {
               sh 'terraform apply -auto-approve tfplan'
           }
       }
   }
   parameters {
       booleanParam(name: 'APPLY_TERRAFORM', defaultValue: false, description: 'Apply Terraform plan?')
   }
   post {
       always {
           archiveArtifacts artifacts: '**/terraform.tfstate', allowEmptyArchive: true
       }
   }
}