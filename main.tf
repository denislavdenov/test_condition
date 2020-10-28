resource "null_resource" "testing" {
  count = var.test ? 1 : 0

  triggers = { test = "true" }

  provisioner "local-exec" {
    command = "echo Hello"
  }
}
