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

resource "ncloud_vpc" "vpc" {
  ipv4_cidr_block = "10.4.0.0/16"
}

resource "ncloud_access_control_group" "access_control_group" {
  vpc_no      = ncloud_vpc.vpc.id
  name        = "example-acg"
  description = "example description"
}

module "access_control_group_rule" {
  source                  = "../"
  access_control_group_no = ncloud_access_control_group.access_control_group.id
  inbound = [
    {
      protocol    = "TCP"
      ip_block    = "0.0.0.0/0"
      port_range  = "22"
      description = "accept 22 port"
      }, {
      protocol    = "TCP"
      ip_block    = "0.0.0.0/0"
      port_range  = "80"
      description = "accept 80 port"
    }
  ]
  outbound = [
    {
      protocol    = "TCP"
      ip_block    = "0.0.0.0/0"
      port_range  = "1-65535"
      description = "accept 1-65535 port"
    }
  ]
}