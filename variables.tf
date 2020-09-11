variable "region" {
  description = "AWS Region"
  type        = string
  default     = "us-west-1"
}
variable "vpc_cidr" {
  description = "default VPC Private IP range"
  type        = string
  default     = "10.0.0.0/16"
}
variable "internet-nat-gw" {
  description = "default Internet Gateway"
  type        = string
  default     = "0.0.0.0/0"
}
variable "sg_inbound-any" {
  description = "Security Group Inbound IP Range - Any"
  type        = string
  default     = "0.0.0.0/0"
}
variable "sg_outbound-any" {
  description = "Security Group Outbound IP Range - Any"
  type        = string
  default     = "0.0.0.0/0"
}