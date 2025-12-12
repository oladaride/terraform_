variable "security_group_id" {
  description = "The ID of the existing security group"
  type        = string
  default     = "sg-09958a8932b7670fc"
}


variable "instance_type" {
  description = "EC2 instance type to use"
  type        = string
  default     = "t3.micro"
}
variable "ami_id" {
  description = "AMI ID to use for the instance"
  type        = string
  default     = "ami-0fa91bc90632c73c9"
}
