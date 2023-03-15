terraform {
  backend "s3" {
    bucket = "do4m-eks-argo-terraform"
    key    = "k8-demo-eks.tfstate"
    region = "ap-southeast-1"
  }
}