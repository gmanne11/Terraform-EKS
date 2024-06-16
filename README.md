# Super-Mario on AWS EKS with Terraform


![super-mario-infra-flow](https://github.com/gmanne11/Terraform-EKS/assets/132149493/8c2de1ac-e7ae-45cb-9eee-fd57f6b6faff)


## Overview
This project deploys the nostalgic Super Mario application on AWS Elastic Kubernetes Service (EKS) using Terraform. It automates the creation of infrastructure including VPC, subnets, NAT Gateway, EKS cluster, and more, ensuring a secure and scalable setup.

## Prerequisites
1. AWS account with appropriate permissions.
2. Terraform installed locally.
3. AWS CLI configured with credentials.

## Setup Instructions
1. **Clone the Repository:**
   ```
   git clone <repository-url>
   cd Terraform-EKS
   ```

2. **Launch Terraform Host:**
   - Launch a `t2.medium` EC2 instance as the Terraform host.
   - Install necessary tools (kubectl, AWS CLI, Terraform, Docker).

3. **Configure Environment on Terraform Host:**
   - SSH into the EC2 instance using PEM key.
   - Configure AWS CLI with access credentials.
   - Clone the application repository.

4. **Setup EKS Cluster and Infrastructure:**
   - Initialize Terraform and apply configuration:
     ```
     terraform init
     terraform apply
     ```

5. **Deploy Application on EKS:**
   - Apply Kubernetes manifests to deploy the Super Mario application.

6. **Access the Application:**
   - Retrieve the Ingress LoadBalancer endpoint to access the deployed application.

7. **Clean Up:**
   - Destroy the infrastructure after use to avoid unnecessary costs:
     ```
     terraform destroy
     ```
     
## Resources Created
- AWS VPC with public and private subnets.
- EKS cluster with managed node group.
- NAT Gateway, Internet Gateway, and Route Tables.
- Security Groups and IAM roles for EKS cluster.

