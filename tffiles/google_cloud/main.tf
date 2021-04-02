terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("cloudkey.json")
  project = "terraformdemo-306409"
  region  = "europe-west1"
  zone    = "europe-west1-b"
}

resource "random_pet" "networkname" {
  length = 0
}

resource "google_compute_network" "vpc_network" {
  count = 2
  name = "${random_pet.networkname.id}-${count.index}"
}
