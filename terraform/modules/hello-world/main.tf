# Hello World module

resource "null_resource" "hello_world" {
  triggers = {
    always = 1
  }

  provisioner "local-exec" {
    command = "echo ${var.message}"
  }
}
