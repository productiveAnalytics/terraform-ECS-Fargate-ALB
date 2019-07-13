# terraform-ECS-Fargate-ALB
IaaC using Terraform for ECS-Fargate and Application ELB

Step 1: configure AWS Keys
export TF_VAR_aws_access_key=<AWS Access key here>
export TF_VAR_aws_secret_key=<AWS Secret key here>

Step 2:
terraform init

Step 3:
terrform plan -var-file="./envs/local_aws.tfvars"

Step 4: Rebuild env
terrform apply -var-file="./envs/local_aws.tfvars"

Step 5: Burn/Teardown env
terrform destroy -var-file="./envs/local_aws.tfvars"

References:
- https://blog.oxalide.io/post/aws-fargate/
- https://github.com/Oxalide/terraform-fargate-example
