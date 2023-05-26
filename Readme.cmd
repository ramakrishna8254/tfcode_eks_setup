

Setup EKS Cluster in AWS using Terraform 

1. Download Code from Hashicorp GIt

git clone https://github.com/hashicorp/terraform-provider-aws.git

2. Navigate to in my case 
	/home/ec2-user/lab2/terraform-provider-aws/examples/eks-getting-started/

rw-r--r--. 1 ec2-user ec2-user  519 May 26 13:05 README.md
-rw-r--r--. 1 ec2-user ec2-user 2047 May 26 13:05 eks-cluster.tf
-rw-r--r--. 1 ec2-user ec2-user 1580 May 26 13:05 eks-worker-nodes.tf
-rw-r--r--. 1 ec2-user ec2-user 1031 May 26 13:05 outputs.tf
-rw-r--r--. 1 ec2-user ec2-user  397 May 26 13:05 providers.tf
-rw-r--r--. 1 ec2-user ec2-user  131 May 26 13:05 variables.tf
-rw-r--r--. 1 ec2-user ec2-user 1158 May 26 13:05 vpc.tf
-rw-r--r--. 1 ec2-user ec2-user  485 May 26 13:05 workstation-external-ip.tf


3. Change cluster name & region  in the variables.tf 
4. change add k8s version vi eks-cluster.tf 
5. Change instance type and add disk size in vi eks-worker-nodes.tf
6. terraform init 
7. terraform plan
8. terraform apply
	
9. Run below cmd to add new context to kubeconfig
	aws eks --region ap-southeast-1 update-kubeconfig --name terraform-eks-demo
