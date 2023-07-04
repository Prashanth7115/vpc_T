tags = {
    Name = "eks-vpc-1"
    Environment = "DEV"
    terraform = true
  }
vpc_cidr = "10.0.0.0/16"  
azs = ["ap-south-1a","ap-south-1b"]
public_subnet_cidr = ["10.0.1.0/24","10.0.2.0/24"]
public_subnet_names = ["project-public-1a","project-public-1b"]
private_subnet_cidr = ["10.0.11.0/24","10.0.12.0/24"]
private_subnet_names = ["project-private-1a","project-private-1b"]
public_sg_name = "public-sg"
public_sg_description = "this security group is for public communication"
ingress_cidr = [
    {
      from_port = "80"
      to_port =  "80"
      cidr_block = "0.0.0.0/0"
      description = "opening 80 to internet"
    },
    { 
      from_port = "443"
      to_port =  "443"
      cidr_block = "0.0.0.0/0"
      description = "opening 443 to internet"
    },
    { 
      from_port = "22"
      to_port =  "22"
      cidr_block = "0.0.0.0/0"
      description = "opening SSH 22 port for SSH access"
    },
]

aws_access_key = "AKIATF5RDKLUGW4VM5EW"
aws_secret_key = "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"
region = "ap-south-1"
vpc-cloudwatch-group = "project-vpc-flowlogs"
vpc-flowlog-role = "project-vpc-flowlog-role"
vpc-iam-role-policy = "project-vpc-flowlog-policy"
project = "project-1"
