resource "auth0_client" "client" {
  name = var.name
  dynamic "addons" {
    for_each = var.addons == null ? [] : [var.addons]
    content {
      dynamic "samlp" {
        for_each = addons.value.samlp == null ? [] : [addons.value.samlp]
        content {
          audience                      = samlp.value.audience
          authn_context_class_ref       = samlp.value.authn_context_class_ref
          binding                       = samlp.value.binding
          create_upn_claim              = samlp.value.create_upn_claim
          destination                   = samlp.value.destination
          digest_algorithm              = samlp.value.digest_algorithm
          include_attribute_name_format = samlp.value.include_attribute_name_format
          issuer                        = samlp.value.issuer
          lifetime_in_seconds           = samlp.value.lifetime_in_seconds
          dynamic "logout" {
            for_each = samlp.value.logout == null ? [] : [samlp.value.logout]
            content {
              callback    = logout.value.callback
              slo_enabled = logout.value.slo_enabled
            }
          }
          map_identities                     = samlp.value.map_identities
          map_unknown_claims_as_is           = samlp.value.map_unknown_claims_as_is
          mappings                           = samlp.value.mappings
          name_identifier_format             = samlp.value.name_identifier_format
          name_identifier_probes             = samlp.value.name_identifier_probes
          passthrough_claims_with_no_mapping = samlp.value.passthrough_claims_with_no_mapping
          recipient                          = samlp.value.recipient
          sign_response                      = samlp.value.sign_response
          signature_algorithm                = samlp.value.signature_algorithm
          signing_cert                       = samlp.value.signing_cert
          typed_attributes                   = samlp.value.typed_attributes
        }
      }
    }
  }
  allowed_clients                     = var.allowed_clients
  allowed_logout_urls                 = var.allowed_logout_urls
  allowed_origins                     = var.allowed_origins
  app_type                            = var.app_type
  callbacks                           = var.callbacks
  client_aliases                      = var.client_aliases
  client_metadata                     = var.client_metadata
  cross_origin_auth                   = var.cross_origin_auth
  cross_origin_loc                    = var.cross_origin_loc
  custom_login_page                   = var.custom_login_page
  custom_login_page_on                = var.custom_login_page_on
  description                         = var.description
  encryption_key                      = var.encryption_key
  form_template                       = var.form_template
  grant_types                         = var.grant_types
  initiate_login_uri                  = var.initiate_login_uri
  is_first_party                      = var.is_first_party
  is_token_endpoint_ip_header_trusted = var.is_token_endpoint_ip_header_trusted
  dynamic "jwt_configuration" {
    for_each = var.jwt_configuration == null ? [] : [var.jwt_configuration]
    content {
      alg                 = jwt_configuration.value.alg
      lifetime_in_seconds = jwt_configuration.value.lifetime_in_seconds
      scopes              = jwt_configuration.value.scopes
      secret_encoded      = jwt_configuration.value.secret_encoded
    }
  }
  logo_uri                      = var.logo_uri
  oidc_backchannel_logout_urls  = var.oidc_backchannel_logout_urls
  oidc_conformant               = var.oidc_conformant
  organization_require_behavior = var.organization_require_behavior
  organization_usage            = var.organization_usage
  dynamic "refresh_token" {
    for_each = var.refresh_token == null ? [] : [var.refresh_token]
    content {
      expiration_type              = refresh_token.value.expiration_type
      rotation_type                = refresh_token.value.rotation_type
      idle_token_lifetime          = refresh_token.value.idle_token_lifetime
      infinite_idle_token_lifetime = refresh_token.value.infinite_idle_token_lifetime
      infinite_token_lifetime      = refresh_token.value.infinite_token_lifetime
      leeway                       = refresh_token.value.leeway
      token_lifetime               = refresh_token.value.token_lifetime
    }
  }
  require_pushed_authorization_requests = var.require_pushed_authorization_requests
  sso                                   = var.sso
  sso_disabled                          = var.sso_disabled
  web_origins                           = var.web_origins
}