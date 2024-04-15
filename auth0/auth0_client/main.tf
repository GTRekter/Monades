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

# TODO:
# addons (Block List, Max: 1) Addons enabled for this client and their associated configurations. (see below for nested schema)
# mobile (Block List, Max: 1) Additional configuration for native mobile apps. (see below for nested schema)
# native_social_login (Block List, Max: 1) Configuration settings to toggle native social login for mobile native applications. Once this is set it must stay set, with both resources set to false in order to change the app_type. (see below for nested schema)


variable "name" {
  description = "(Eequired) Name of the client."
  type        = string
}

# variable "addons" {
# }

variable "allowed_clients" {
  description = "(Optional) List of applications ID's that will be allowed to make delegation request. By default, all applications will be allowed."
  type        = list(string)
  default     = []
}

variable "allowed_logout_urls" {
  description = "(Optional) URLs that Auth0 may redirect to after logout."
  type        = list(string)
  default     = []
}

variable "allowed_origins" {
  description = "(Optional) URLs that represent valid origins for cross-origin resource sharing. By default, all your callback URLs will be allowed."
  type        = list(string)
  default     = []
}

variable "app_type" {
  description = "(Optional) Type of application the client represents. Possible values are: native, spa, regular_web, non_interactive, sso_integration. Specific SSO integrations types accepted as well are: rms, box, cloudbees, concur, dropbox, mscrm, echosign, egnyte, newrelic, office365, salesforce, sentry, sharepoint, slack, springcm, zendesk, zoom."
  type        = string
  default     = null
  validation {
    condition     = can(regex("native|spa|regular_web|non_interactive|sso_integration|rms|box|cloudbees|concur|dropbox|mscrm|echosign|egnyte|newrelic|office365|salesforce|sentry|sharepoint|slack|springcm|zendesk|zoom", var.app_type))
    error_message = "app_type must be native, spa, regular_web, non_interactive, sso_integration, rms, box, cloudbees, concur, dropbox, mscrm, echosign, egnyte, newrelic, office365, salesforce, sentry, sharepoint, slack, springcm, zendesk, or zoom."
  }
}

variable "callbacks" {
  description = "(Optional) URLs that Auth0 may call back to after a user authenticates for the client. Make sure to specify the protocol (https://) otherwise the callback may fail in some cases. With the exception of custom URI schemes for native clients, all callbacks should use protocol https://."
  type        = list(string)
  default     = []
}

variable "client_aliases" {
  description = "(Optional) List of audiences/realms for SAML protocol. Used by the wsfed addon."
  type        = list(string)
  default     = []
}

variable "client_metadata" {
  description = "(Optional) Metadata associated with the client, in the form of an object with string values (max 255 chars). Maximum of 10 metadata properties allowed."
  type        = map(string)
  default     = {}
  validation {
    condition     = length(keys(var.client_metadata)) <= 10
    error_message = "client_metadata must have 10 or fewer keys."
  }
}

variable "cross_origin_auth" {
  description = "(Optional) Whether this client can be used to make cross-origin authentication requests (true) or it is not allowed to make such requests (false)."
  type        = bool
  default     = false
}

variable "cross_origin_loc" {
  description = "(Optional) URL of the location in your site where the cross-origin verification takes place for the cross-origin auth flow when performing authentication in your own domain instead of Auth0 Universal Login page."
  type        = string
  default     = null
}

variable "custom_login_page" {
  description = "(Optional) The content (HTML, CSS, JS) of the custom login page."
  type        = string
  default     = null
}

variable "custom_login_page_on" {
  description = "(Optional) Indicates whether a custom login page is to be used."
  type        = bool
  default     = false
}

variable "description" {
  description = "(Optional) Description of the purpose of the client."
  type        = string
  default     = null
}

variable "encryption_key" {
  description = "(Optional) Encryption used for WS-Fed responses with this client."
  type        = map(string)
  default     = {}
}

variable "form_template" {
  description = "(Optional) HTML form template to be used for WS-Federation."
  type        = string
  default     = null
}

variable "grant_types" {
  description = "(Optional) Types of grants that this client is authorized to use."
  type        = list(string)
  default     = []
}

variable "initiate_login_uri" {
  description = "(Optional) Initiate login URI. Must be HTTPS or an empty string."
  type        = string
  default     = null
}

variable "is_first_party" {
  description = "(Optional) Indicates whether this client is a first-party client."
  type        = bool
  default     = false
}

variable "is_token_endpoint_ip_header_trusted" {
  description = "(Optional) Indicates whether the token endpoint IP header is trusted. Requires the authentication method to be set to client_secret_post or client_secret_basic. Setting this property when creating the resource, will default the authentication method to client_secret_post. To change the authentication method to client_secret_basic use the auth0_client_credentials resource."
  type        = bool
  default     = false
}

variable "jwt_configuration" {
  description = <<EOF
    Configuration settings for the JSON Web Token (JWT) used for this client.
    - alg - (Optional) Algorithm used to sign JWTs.
    - lifetime_in_seconds - (Optional) Number of seconds during which the JWT will be valid.
    - scopes - (Optional) Permissions (scopes) included in JWTs.
    - secret_encoded - (Optional) Indicates whether the client secret is Base64-encoded.
EOF
  default     = null
  type = object({
    alg                 = optional(string)
    lifetime_in_seconds = optional(number)
    scopes              = optional(map(string))
    secret_encoded      = optional(bool)
  })
}

variable "logo_uri" {
  description = "(Optional) URL of the logo for the client. Recommended size is 150px x 150px. If none is set, the default badge for the application type will be shown."
  type        = string
  default     = null
}

# variable "mobile" {
# }

# variable "native_social_login" {
# }

variable "oidc_backchannel_logout_urls" {
  description = "(Optional) Set of URLs that are valid to call back from Auth0 for OIDC backchannel logout. Currently only one URL is allowed."
  type        = list(string)
  default     = []
}

variable "oidc_conformant" {
  description = "(Optional) Indicates whether this client will conform to strict OIDC specifications."
  type        = bool
  default     = false
}

variable "organization_require_behavior" {
  description = "(Optional) Defines how to proceed during an authentication transaction when organization_usage = require. Can be no_prompt (default), pre_login_prompt or post_login_prompt."
  type        = string
  default     = null
}

variable "organization_usage" {
  description = "(Optional) Defines how to proceed during an authentication transaction with regards to an organization. Can be deny (default), allow or require."
  type        = string
  default     = null
}

variable "refresh_token" {
  description = <<EOF
    Configuration settings for the refresh tokens issued for this client.
    - expiration_type - (Required) Options include expiring, non-expiring. Whether a refresh token will expire based on an absolute lifetime, after which the token can no longer be used. If rotation is rotating, this must be set to expiring.
    - rotation_type - (Required) Options include rotating, non-rotating. When rotating, exchanging a refresh token will cause a new refresh token to be issued and the existing token will be invalidated. This allows for automatic detection of token reuse if the token is leaked.
    - idle_token_lifetime - (Optional) The time in seconds after which inactive refresh tokens will expire.
    - infinite_idle_token_lifetime - (Optional) Whether inactive refresh tokens should remain valid indefinitely.
    - infinite_token_lifetime - (Optional) Whether refresh tokens should remain valid indefinitely. If false, token_lifetime should also be set.
    - leeway - (Optional) The amount of time in seconds in which a refresh token may be reused without triggering reuse detection.
    - token_lifetime - (Optional) The absolute lifetime of a refresh token in seconds.
EOF
  default     = null
  type = object({
    expiration_type              = string
    rotation_type                = string
    idle_token_lifetime          = optional(number)
    infinite_idle_token_lifetime = optional(bool)
    infinite_token_lifetime      = optional(bool)
    leeway                       = optional(number)
    token_lifetime               = optional(number)
  })
}

variable "require_pushed_authorization_requests" {
  description = "(Optional) Makes the use of Pushed Authorization Requests mandatory for this client. This feature currently needs to be enabled on the tenant in order to make use of it."
  type        = bool
  default     = false
}

variable "sso" {
  description = "(Optional) Applies only to SSO clients and determines whether Auth0 will handle Single Sign-On (true) or whether the identity provider will (false)."
  type        = bool
  default     = false
}

variable "sso_disabled" {
  description = "(Optional) Indicates whether or not SSO is disabled."
  type        = bool
  default     = false
}

variable "web_origins" {
  description = "(Optional) URLs that represent valid web origins for use with web message response mode."
  type        = list(string)
  default     = []
}