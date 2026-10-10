output "lightsail_lb_certificate_attachments_id" {
  description = "Map of id values across all lightsail_lb_certificate_attachments, keyed the same as var.lightsail_lb_certificate_attachments"
  value       = { for k, v in aws_lightsail_lb_certificate_attachment.lightsail_lb_certificate_attachments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lightsail_lb_certificate_attachments_certificate_name" {
  description = "Map of certificate_name values across all lightsail_lb_certificate_attachments, keyed the same as var.lightsail_lb_certificate_attachments"
  value       = { for k, v in aws_lightsail_lb_certificate_attachment.lightsail_lb_certificate_attachments : k => v.certificate_name if v.certificate_name != null && length(v.certificate_name) > 0 }
}
output "lightsail_lb_certificate_attachments_lb_name" {
  description = "Map of lb_name values across all lightsail_lb_certificate_attachments, keyed the same as var.lightsail_lb_certificate_attachments"
  value       = { for k, v in aws_lightsail_lb_certificate_attachment.lightsail_lb_certificate_attachments : k => v.lb_name if v.lb_name != null && length(v.lb_name) > 0 }
}
output "lightsail_lb_certificate_attachments_region" {
  description = "Map of region values across all lightsail_lb_certificate_attachments, keyed the same as var.lightsail_lb_certificate_attachments"
  value       = { for k, v in aws_lightsail_lb_certificate_attachment.lightsail_lb_certificate_attachments : k => v.region if v.region != null && length(v.region) > 0 }
}

