variable "aws_region" {
    default = "us-east-1"
    description = "aws region"
}

variable "kubernetes_version" {
    default = "1.29"
    description = "kubernetes version"
}

variable "private_subnets" {
    default = ["10.0.1.0/24", "10.0.2.0/24"]
    description = "private subnets"
}

variable "public_subnets" {
    default = ["10.0.4.0/24", "10.0.5.0/24"]
    description = "public subnets"
}

variable "azs" {
    default = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
    description = "all azs"
}

variable "vpc_cidr" {
    default = "10.0.0.0/16"
    description = "vpc cidr block"
}

variable "vpc_name" {
    default = "vivi-eks-vpc"
    description = "vpc name"
}