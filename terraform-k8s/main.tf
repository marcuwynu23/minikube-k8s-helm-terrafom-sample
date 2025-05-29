provider "kubernetes" {
  config_path = "~/.kube/config"
}
resource "kubernetes_manifest" "vite_app_deployment" {
  manifest = yamldecode(file("${path.module}/k8s/vite-app-deployment.yml"))
}

resource "kubernetes_manifest" "vite_app_service" {
  manifest = yamldecode(file("${path.module}/k8s/vite-app-service.yml"))
}
