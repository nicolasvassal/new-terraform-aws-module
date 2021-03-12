/*variable "region" {

  type        = string
  default     = "us-east-1"
  description = "AWS region"
}

variable "cidr_blocks" {

  type        = list
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"]
  description = "cidr blocks for subnets"
}

variable "instance_type" {

  type        = string
  default     = "t2.micro"
  description = "Instance type for the webserver"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "instance_tags" {
  description = "Additional tags for the instance"
  type        = map(string)
  default     = {}
}

variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = "wordpress"
}*/

/*output "network_cidr_blocks" {
  value       = tomap(local.addrs_by_name)
  description = "A map from network names to allocated address prefixes in CIDR notation."
}*/

variable "base_cidr_block" {
  type        = string
  description = "A network address prefix in CIDR notation that all of the requested subnetwork prefixes will be allocated within."
}

variable "networks" {
  type = list(object({
#    name     = string
    new_bits = number
  }))
  description = "A list of objects describing requested subnetwork prefixes. new_bits is the number of additional network prefix bits to add, in addition to the existing prefix on base_cidr_block."
}