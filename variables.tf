#DEFINING ALL VARIABLES
variable "aws_owner_id" {
  description = "Contains owner id "
  type        = string
}

variable "aws_ami_name" {
  description = "Name of the ami I want for my project"
  type        = string
}

variable "ec2_type" {
  description = "Type of my ec2 instance"
  type        = string
  default     = "t2.micro"

}

variable "vpc_name" {
  description = "Name of the vpc for my project"
  type        = string
}

variable "public_subnet_name" {
  type = string
}


variable "my_keypair" {
  default = "Mackey"
}

variable "number_of_instances" {
  description = "Amount of instances for my public subnet"
}