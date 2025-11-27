terraform{
    required_providers {
        minikube = {
            source = "scott-the-programmer/minikube"
            version = "0.42"
        }


    }
}

provider "minikube" {

    kubernetes_version = "1.38"
}

resource "minikube_cluster" "minikube_docker" {
    driver = "docker"
    cluster_name = "complete-devops"
    addons = [
        "default-storageclass",
        "storage-provisioner"
    ]
  
}