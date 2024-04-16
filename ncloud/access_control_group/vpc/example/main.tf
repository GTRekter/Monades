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

module "access_control_group" {
  source      = "../"
  vpc_no      = ncloud_vpc.vpc.id
  name        = "example-acg"
  description = "example description"
}