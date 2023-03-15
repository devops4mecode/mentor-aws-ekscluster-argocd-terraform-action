terraform {
  backend "s3" {
    bucket = "do4m-eks-argo-tf"
    key    = "do4m-eks-argo-tf.tfstate"
    region = "ap-southeast-1"
  }
}