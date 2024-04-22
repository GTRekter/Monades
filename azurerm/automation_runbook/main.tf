resource "azurerm_automation_runbook" "automation_runbook" {
  name                    = var.name
  location                = var.location
  resource_group_name     = var.resource_group_name
  automation_account_name = var.automation_account_name
  log_verbose             = var.log_verbose
  log_progress            = var.log_progress
  description             = var.description
  runbook_type            = var.runbook_type
  content                 = var.content
  publish_content_link {
    uri = var.publish_content_link_uri
  }

  dynamic "draft" {
    for_each = var.draft != null ? [var.draft] : []
    content {
      edit_mode_enabled = draft.value.edit_mode_enabled
      output_types      = draft.value.output_types

      dynamic "content_link" {
        for_each = draft.value.content_link != null ? [draft.value.content_link] : []
        content {
          uri     = content_link.value.uri
          version = content_link.value.version
          hash {
            algorithm = content_link.value.hash.algorithm
            value     = content_link.value.hash.value
          }
        }
      }

      dynamic "parameters" {
        for_each = draft.value.parameters
        content {
          key           = parameters.value.key
          type          = parameters.value.type
          mandatory     = parameters.value.mandatory
          position      = parameters.value.position
          default_value = parameters.value.default_value
        }
      }
    }
  }
}
