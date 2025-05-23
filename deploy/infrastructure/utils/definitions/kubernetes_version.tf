variable "kubernetes_version" {
  type        = string
  description = <<-EOT
  Desired version of the Kubernetes cluster control plane and nodes.

  Supported versions: 1.24 to 1.32
  EOT

  validation {
    condition     = contains(["1.24", "1.25", "1.26", "1.27", "1.28", "1.29", "1.30", "1.31", "1.32"], var.kubernetes_version)
    error_message = "Supported versions: 1.24 to 1.32"
  }
}
