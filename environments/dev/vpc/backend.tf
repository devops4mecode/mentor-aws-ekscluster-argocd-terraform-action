terraform {
  backend "s3" {
    bucket = "do4m-eks-argo-terraform"
    key    = "do4m-eks-argo-terraform.tfstate"
    region = "ap-southeast-1"
  }
}