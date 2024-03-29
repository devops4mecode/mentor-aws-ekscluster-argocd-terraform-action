variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR"
  default     = "10.0.0.0/16"
}

variable "project" {
  type        = string
  description = "Project name"
  default     = "do4m-eks-cluster"
}

variable "cluster_name" {
  type        = string
  description = "Kubernetes cluster name"
  default     = "do4m-eks-cluster"
}

variable "availability_zones" {
  type        = list(string)
  description = "Availability zones"
  default     = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
}

variable "private_subnets" {
  type        = list(string)
  description = "Private subnet cidr"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnets" {
  type        = list(string)
  description = "Public subnet cidr"
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

}