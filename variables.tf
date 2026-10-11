variable "iot_digital_twin_adapters" {
  description = <<EOT
Map of iot_digital_twin_adapters, attributes below
Required:
    - iot_domain_id
Optional:
    - defined_tags
    - description
    - digital_twin_model_id
    - digital_twin_model_spec_uri
    - display_name
    - freeform_tags
    - inbound_envelope (block):
        - envelope_mapping (optional, block):
            - content_root (optional)
            - target (optional)
            - time_observed (optional)
        - reference_endpoint (required)
        - reference_payload (optional, block):
            - data (required)
            - data_format (required)
    - inbound_routes (block):
        - condition (required)
        - content_root (optional)
        - description (optional)
        - payload_mapping (optional)
        - reference_payload (optional, block):
            - data (required)
            - data_format (required)
        - target (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    iot_domain_id               = string
    defined_tags                = optional(map(string))
    description                 = optional(string)
    digital_twin_model_id       = optional(string)
    digital_twin_model_spec_uri = optional(string)
    display_name                = optional(string)
    freeform_tags               = optional(map(string))
    inbound_envelope = optional(object({
      envelope_mapping = optional(object({
        content_root  = optional(string)
        target        = optional(string)
        time_observed = optional(string)
      }))
      reference_endpoint = string
      reference_payload = optional(object({
        data        = map(string)
        data_format = string
      }))
    }))
    inbound_routes = optional(list(object({
      condition       = string
      content_root    = optional(string)
      description     = optional(string)
      payload_mapping = optional(map(string))
      reference_payload = optional(object({
        data        = map(string)
        data_format = string
      }))
      target = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.iot_digital_twin_adapters : (
        v.inbound_envelope == null || (v.inbound_envelope.reference_payload == null || (contains([for v in ["JSON"] : lower(v)], lower(v.inbound_envelope.reference_payload.data_format))))
      )
    ])
    error_message = "must be one of: \"JSON\""
  }
  validation {
    condition = alltrue([
      for k, v in var.iot_digital_twin_adapters : (
        v.inbound_routes == null || alltrue([for item in v.inbound_routes : (item.reference_payload == null || (contains([for v in ["JSON"] : lower(v)], lower(item.reference_payload.data_format))))])
      )
    ])
    error_message = "must be one of: \"JSON\""
  }
}

