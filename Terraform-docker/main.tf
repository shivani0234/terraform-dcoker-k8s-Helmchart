terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.9.0"
    }
  }
}

provider "docker" {}

# Build Docker Image
resource "docker_image" "my_app" {
  name = "my-nginx-custom:latest"

  build {
    context    = "${path.module}/app"
    dockerfile = "Dockerfile"
  }
}

# Run Container
resource "docker_container" "my_app_container" {
  name  = "my-custom-nginx"
  image = docker_image.my_app.image_id

  ports {
    internal = 80
    external = 8081
  }
}