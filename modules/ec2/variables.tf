variable "subnet_id" {
  description = "Subnet ID to launch the instance in"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}

variable "key_name" {
  description = "Key pair name"
  type        = string
}

variable "name" {
  description = "Name tag for the instance"
  type        = string
}