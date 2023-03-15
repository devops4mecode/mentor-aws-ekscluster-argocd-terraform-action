data "terraform_remote_state" "eks" {
  backend = "s3"

  config = {
    bucket = "do4m-eks-argo-tf"
    key    = "do4m-eks-argo-tf.tfstate"
    region = "ap-southeast-1"
  }
}

data "kubectl_file_documents" "namespace" {
  content = file("${path.module}/manifests/namespace.yaml")
}

data "kubectl_file_documents" "argocd" {
  content = file("${path.module}/manifests/install.yaml")
}

data "kubectl_file_documents" "grpc" {
  content = file("${path.module}/manifests/service-grpc.yaml")
}

data "kubectl_file_documents" "ingress" {
  content = file("${path.module}/manifests/ingress.yaml")
}

data "kubectl_file_documents" "repos" {
  content = file("${path.module}/manifests/app-repos.yaml")
}

data "kubectl_file_documents" "appset" {
  content = file("${path.module}/manifests/app-set.yaml")
}
