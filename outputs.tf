output "iot_digital_twin_adapters_id" {
  description = "Map of id values across all iot_digital_twin_adapters, keyed the same as var.iot_digital_twin_adapters except keys with no id are omitted"
  value       = { for k, v in oci_iot_digital_twin_adapter.iot_digital_twin_adapters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iot_digital_twin_adapters_defined_tags" {
  description = "Map of defined_tags values across all iot_digital_twin_adapters, keyed the same as var.iot_digital_twin_adapters except keys with no defined_tags are omitted"
  value       = { for k, v in oci_iot_digital_twin_adapter.iot_digital_twin_adapters : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "iot_digital_twin_adapters_description" {
  description = "Map of description values across all iot_digital_twin_adapters, keyed the same as var.iot_digital_twin_adapters except keys with no description are omitted"
  value       = { for k, v in oci_iot_digital_twin_adapter.iot_digital_twin_adapters : k => v.description if v.description != null && length(v.description) > 0 }
}
output "iot_digital_twin_adapters_digital_twin_model_id" {
  description = "Map of digital_twin_model_id values across all iot_digital_twin_adapters, keyed the same as var.iot_digital_twin_adapters except keys with no digital_twin_model_id are omitted"
  value       = { for k, v in oci_iot_digital_twin_adapter.iot_digital_twin_adapters : k => v.digital_twin_model_id if v.digital_twin_model_id != null && length(v.digital_twin_model_id) > 0 }
}
output "iot_digital_twin_adapters_digital_twin_model_spec_uri" {
  description = "Map of digital_twin_model_spec_uri values across all iot_digital_twin_adapters, keyed the same as var.iot_digital_twin_adapters except keys with no digital_twin_model_spec_uri are omitted"
  value       = { for k, v in oci_iot_digital_twin_adapter.iot_digital_twin_adapters : k => v.digital_twin_model_spec_uri if v.digital_twin_model_spec_uri != null && length(v.digital_twin_model_spec_uri) > 0 }
}
output "iot_digital_twin_adapters_display_name" {
  description = "Map of display_name values across all iot_digital_twin_adapters, keyed the same as var.iot_digital_twin_adapters except keys with no display_name are omitted"
  value       = { for k, v in oci_iot_digital_twin_adapter.iot_digital_twin_adapters : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "iot_digital_twin_adapters_freeform_tags" {
  description = "Map of freeform_tags values across all iot_digital_twin_adapters, keyed the same as var.iot_digital_twin_adapters except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_iot_digital_twin_adapter.iot_digital_twin_adapters : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "iot_digital_twin_adapters_inbound_envelope" {
  description = "Map of inbound_envelope values across all iot_digital_twin_adapters, keyed the same as var.iot_digital_twin_adapters except keys with no inbound_envelope are omitted"
  value       = { for k, v in oci_iot_digital_twin_adapter.iot_digital_twin_adapters : k => one(v.inbound_envelope) if v.inbound_envelope != null && length(v.inbound_envelope) > 0 }
}
output "iot_digital_twin_adapters_inbound_routes" {
  description = "Map of inbound_routes values across all iot_digital_twin_adapters, keyed the same as var.iot_digital_twin_adapters except keys with no inbound_routes are omitted"
  value       = { for k, v in oci_iot_digital_twin_adapter.iot_digital_twin_adapters : k => v.inbound_routes if v.inbound_routes != null && length(v.inbound_routes) > 0 }
}
output "iot_digital_twin_adapters_iot_domain_id" {
  description = "Map of iot_domain_id values across all iot_digital_twin_adapters, keyed the same as var.iot_digital_twin_adapters except keys with no iot_domain_id are omitted"
  value       = { for k, v in oci_iot_digital_twin_adapter.iot_digital_twin_adapters : k => v.iot_domain_id if v.iot_domain_id != null && length(v.iot_domain_id) > 0 }
}
output "iot_digital_twin_adapters_state" {
  description = "Map of state values across all iot_digital_twin_adapters, keyed the same as var.iot_digital_twin_adapters except keys with no state are omitted"
  value       = { for k, v in oci_iot_digital_twin_adapter.iot_digital_twin_adapters : k => v.state if v.state != null && length(v.state) > 0 }
}
output "iot_digital_twin_adapters_system_tags" {
  description = "Map of system_tags values across all iot_digital_twin_adapters, keyed the same as var.iot_digital_twin_adapters except keys with no system_tags are omitted"
  value       = { for k, v in oci_iot_digital_twin_adapter.iot_digital_twin_adapters : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "iot_digital_twin_adapters_time_created" {
  description = "Map of time_created values across all iot_digital_twin_adapters, keyed the same as var.iot_digital_twin_adapters except keys with no time_created are omitted"
  value       = { for k, v in oci_iot_digital_twin_adapter.iot_digital_twin_adapters : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "iot_digital_twin_adapters_time_updated" {
  description = "Map of time_updated values across all iot_digital_twin_adapters, keyed the same as var.iot_digital_twin_adapters except keys with no time_updated are omitted"
  value       = { for k, v in oci_iot_digital_twin_adapter.iot_digital_twin_adapters : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

