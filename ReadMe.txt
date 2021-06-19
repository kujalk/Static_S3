Instructions
----------------

1.	Install AWS CLI in your machine and configure the profile using “aws configure” command
2.	Download the Terraform from official site and set the path to the executable depending on the OS
3.	Open “provider.tf” and set the value for AWS region and profile path and profile name
4.	Open “terraform.tfvars” file and provide a suitable unique name for your s3 (This can resemble your website name, for example www.this-is-for-demo.com
5.	Make sure your “index.html” webpage is also hosted in the same folder where Terraform template located
6.	Run “terraform init”
7.	Run “terraform plan” to see what are the resources will be created
8.	Run “terraform apply” and provide “yes” to create the resources
9.	The output of the execution is “website endpoint”. Access that endpoint to see your webpage
10.	Run “terraform destroy” and provide “yes” to destroy all the resources
