resource "oci_iot_digital_twin_adapter" "iot_digital_twin_adapters" {
  for_each = var.iot_digital_twin_adapters

  iot_domain_id               = each.value.iot_domain_id
  defined_tags                = each.value.defined_tags
  description                 = each.value.description
  digital_twin_model_id       = each.value.digital_twin_model_id
  digital_twin_model_spec_uri = each.value.digital_twin_model_spec_uri
  display_name                = each.value.display_name
  freeform_tags               = each.value.freeform_tags

  dynamic "inbound_envelope" {
    for_each = each.value.inbound_envelope != null ? [each.value.inbound_envelope] : []
    content {
      dynamic "envelope_mapping" {
        for_each = inbound_envelope.value.envelope_mapping != null ? [inbound_envelope.value.envelope_mapping] : []
        content {
          content_root  = envelope_mapping.value.content_root
          target        = envelope_mapping.value.target
          time_observed = envelope_mapping.value.time_observed
        }
      }
      reference_endpoint = inbound_envelope.value.reference_endpoint
      dynamic "reference_payload" {
        for_each = inbound_envelope.value.reference_payload != null ? [inbound_envelope.value.reference_payload] : []
        content {
          data        = reference_payload.value.data
          data_format = reference_payload.value.data_format
        }
      }
    }
  }

  dynamic "inbound_routes" {
    for_each = each.value.inbound_routes != null ? each.value.inbound_routes : []
    content {
      condition       = inbound_routes.value.condition
      content_root    = inbound_routes.value.content_root
      description     = inbound_routes.value.description
      payload_mapping = inbound_routes.value.payload_mapping
      dynamic "reference_payload" {
        for_each = inbound_routes.value.reference_payload != null ? [inbound_routes.value.reference_payload] : []
        content {
          data        = reference_payload.value.data
          data_format = reference_payload.value.data_format
        }
      }
      target = inbound_routes.value.target
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

