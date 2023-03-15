variable "region" {
  type        = string
  description = "AWS region"
  default     = "ap-southeast-1"
}

variable "cluster_version" {
  type        = string
  description = "Kubernetes cluster version"
  default     = "1.23"
}

variable "cluster_name" {
  type        = string
  description = "Kubernetes cluster name"
  default     = "do4m-eks-cluster"
}

variable "aws_image_repository" {
  type        = string
  description = "AWS image repository for ap-southeast-1 region" ## https://docs.aws.amazon.com/eks/latest/userguide/add-ons-images.html
  default     = "602401143452.dkr.ecr.ap-southeast-1.amazonaws.com"
}
