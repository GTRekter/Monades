# TODO:
# addons (Block List, Max: 1) Addons enabled for this client and their associated configurations. (see below for nested schema)
# mobile (Block List, Max: 1) Additional configuration for native mobile apps. (see below for nested schema)
# native_social_login (Block List, Max: 1) Configuration settings to toggle native social login for mobile native applications. Once this is set it must stay set, with both resources set to false in order to change the app_type. (see below for nested schema)


variable "name" {
  description = "(Eequired) Name of the client."
  type        = string
}

variable "addons" {
  description = <<EOF
  (Optional) Addons enabled for this client and their associated configurations.
    - samlp - (Optional) Configuration settings for the SAML protocol.
        - audience - (Optional) Audience for the SAML assertion.
        - authn_context_class_ref - (Optional) Authentication context class reference.
        - binding - (Optional) SAML binding type. Possible values are: urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST, urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect.
        - create_upn_claim - (Optional) Whether to create a UPN claim from the email claim.
        - destination - (Optional) Destination for the SAML assertion.
        - digest_algorithm - (Optional) Algorithm used to calculate the digest of the SAML Assertion or response. Options include sha1 and sha256. Defaults to sha1.
        - include_attribute_name_format - (Optional) Whether to include the attribute name format in the SAML assertion.
        - issuer - (Optional) Issuer of the SAML assertion.
        - lifetime_in_seconds - (Optional) Lifetime of the SAML assertion in seconds.
        - logout - (Optional) Configuration settings for the SAML logout.
            - callback (String) The service provider (client application)'s Single Logout Service URL, where Auth0 will send logout requests and responses.
            - slo_enabled (Boolean) Controls whether Auth0 should notify service providers of session termination.
        - callback - (Optional) URL to redirect to after logout.
        - slo_enabled - (Optional) Whether single logout is enabled.
        - map_identities - (Optional) Whether to map identities.
        - map_unknown_claims_as_is - (Optional) Whether to map unknown claims as is.
        - mappings - (Optional) Mappings of attributes.
        - name_identifier_format - (Optional) Name identifier format.
        - name_identifier_probes - (Optional) Name identifier probes.
        - passthrough_claims_with_no_mapping - (Optional) Whether to pass through claims with no mapping.
        - recipient - (Optional) Recipient for the SAML assertion.
        - sign_response - (Optional) Whether to sign the SAML response.
        - signature_algorithm - (Optional) Signature algorithm used to sign the SAML assertion.
        - signing_cert - (Optional) Signing certificate.
        - typed_attributes - (Optional) Whether to use typed attributes.
EOF
  type = object({
    samlp = optional(object({
      audience                      = optional(string)
      authn_context_class_ref       = optional(string)
      binding                       = optional(string)
      create_upn_claim              = optional(bool)
      destination                   = optional(string)
      digest_algorithm              = optional(string)
      include_attribute_name_format = optional(bool)
      issuer                        = optional(string)
      lifetime_in_seconds           = optional(number)
      logout = optional(object({
        callback = optional(string)
        slo_enabled = optional(bool)
      }))
      map_identities                     = optional(bool)
      map_unknown_claims_as_is           = optional(bool)
      mappings                           = optional(map(string))
      name_identifier_format             = optional(string)
      name_identifier_probes             = optional(list(string))
      passthrough_claims_with_no_mapping = optional(bool)
      recipient                          = optional(string)
      sign_response                      = optional(bool)
      signature_algorithm                = optional(string)
      signing_cert                       = optional(string)
      typed_attributes                   = optional(bool)
    }))
  })
  default = null
}

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