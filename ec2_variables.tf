variable "ami_id" {
  description = "ID of AMI to use, it must have SSM agent installed"
  type        = string
  default     = ""
}

variable "subnet_id_instance_1_name" {
  description = "ID of subnet where to launch EC2"
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "type of ec2 instance to launch"
  type        = string
  default     = "t3.micro"
}

variable "vpc_security_group_ids_instance_1_name" {
  description = "IDs of SGs to be attached to EC2"
  type        = list(any)
  default     = [""]
}

variable "ec2_volume_size" {
  description = "size of EC2 root volume attached to instances"
  type        = number
  default     = "10"
}