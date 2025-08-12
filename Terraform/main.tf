terraform {
  required_version = ">= 1.0.0"
}

provider "null" {}

# Example resource for demonstration only
resource "null_resource" "demo" {
  provisioner "local-exec" {
    command = "echo 'Terraform demo pipeline triggered.'"
  }
}
