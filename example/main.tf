# Terraform configuration

/*terraform {
  required_providers {
    aws = {
      source = "../"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}*/

module "subnet_addrs" {
  source = "../"

  base_cidr_block = "10.0.0.0/8"
  networks = [
    {
#      name     = "foo"
      new_bits = 16
    },
    {
#      name     = "bar"
      new_bits = 16
    },
    {
#      name     = "baz"
      new_bits = 16
    },
    {
#      name     = "beep"
      new_bits = 16
    },
  ]
}

output "subnet_addrs" {
  value = module.subnet_addrs
}

/*module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.21.0"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.vpc_azs
  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_public_subnets

  enable_nat_gateway = var.vpc_enable_nat_gateway

  tags = var.vpc_tags
}
*/