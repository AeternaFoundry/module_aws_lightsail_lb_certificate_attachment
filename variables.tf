variable "lightsail_lb_certificate_attachments" {
  description = <<EOT
Map of lightsail_lb_certificate_attachments, attributes below
Required:
    - certificate_name
    - lb_name
Optional:
    - region
EOT

  type = map(object({
    certificate_name = string
    lb_name          = string
    region           = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.lightsail_lb_certificate_attachments : (
        (length(v.lb_name) >= 2 && length(v.lb_name) <= 255) && (can(regex("^[A-Za-z]", v.lb_name))) && (can(regex("^[0-9A-Za-z_.-]+[^_.-]$", v.lb_name)))
      )
    ])
    error_message = "all of: must be between 2 and 255 characters; must begin with an alphabetic character; must contain only alphanumeric characters, underscores, hyphens, and dots"
  }
}

