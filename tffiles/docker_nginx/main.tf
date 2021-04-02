terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

provider "docker" {

}

resource "docker_image" "mikesNginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "mikesnginxcontainer" {
  image = docker_image.mikesNginx.latest
  name  = "mikes_tf_demo"
  ports {
    internal = 80
    external = 8000
  }
}