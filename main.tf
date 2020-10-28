resource "null_resource" "testing" {
  count = 1

  triggers = { test = "true" }

  provisioner "local-exec" {
    command = "echo Hello"
  }
}
