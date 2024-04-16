terraform {
  required_version = ">= 0.13"
  required_providers {
    ncloud = {
      source  = "NaverCloudPlatform/ncloud"
      version = "3.0.0"
    }
  }
}

provider "ncloud" {}

resource "ncloud_launch_configuration" "launch_configuration" {
  name                      = "example-launch-configuration"
  server_image_product_code = "SPSW0LINUX000046"
  server_product_code       = "SPSVRSSD00000003"
}

module "auto_scaling_group" {
  source                    = "../"
  name                      = "example-auto-scaling-group"
  launch_configuration_no   = ncloud_launch_configuration.launch_configuration.launch_configuration_no
  desired_capacity          = 1
  min_size                  = 1
  max_size                  = 1
  ignore_capacity_changes   = false
  zone_no_list              = ["2"]
  wait_for_capacity_timeout = "0"
}