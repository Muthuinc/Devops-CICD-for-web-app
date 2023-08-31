# CI--CD Pipeline for web application

### About the project


Setting up a simple CI CD for web app -- our case static web application

- Here we have the code files inside hills folder. Developers will work on that.

- Inside jenkinsfile two stages were given.
   - first stage will checkout the SCM repo.
   - Second stage will deploy the code to the server via ansible.  


- Script file is added to get the public ip of the server. (since it 
  is in AWS Ec2, AWS cli queries will fetch the ip)   
  That way it is not required to provide 
  the ip of the server in advance.

- Ansible is chosen for deployment as it is idempotent, we can use it for repetitive tasks.

- All the credentials required for this setup is provided as environment varaibles in the jenkinsfile.
   
   - AWS IAM user credentials is for the CLI command the we use to get the public ip.
   - Private key for ansible playbook is stored as secret file in the name of Muthur.


***

### Tools
 - ![Static Badge](https://img.shields.io/badge/jenkins-2.401.3-green)
 Visit the official website to install [Jenkins][def]
 - ![Static Badge](https://img.shields.io/badge/ansible-2.10.8-green)
 Visit the official website to install [Ansible][def1]
 - ![Static Badge](https://img.shields.io/badge/aws_cli-2.13.7-green)
 Visit the official website to install [AWS_Cli][def2]

 #### Notes:

 Clone the repo and change the environment section in the jenkinsfile as per your credential name that you stored in jenkins.   
 In the script file ansible/ip.sh  modify the tag value of the cli command to get your instance ip address


 ***





[def]: https://www.jenkins.io/download/
[def1]: https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html
[def2]: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html