provider "helm" {
  kubernetes {
    config_path = "~/.kube/config" # or custom path to your kubeconfig
  }
}

resource "helm_release" "vite_app" {
  name      = "vite-app"
  namespace = "default"
  chart     = "./vite-app" # Local path to your chart
  wait      = true
  timeout   = 600
  values = [
    file("./vite-app/values.yaml")
  ]
}
