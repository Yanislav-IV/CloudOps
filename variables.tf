variable "instance_name_public" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "CloudOpsAppServerInstancePublic"
}

variable "instance_name_vpc" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "CloudOpsAppServerInstanceVpc"
}