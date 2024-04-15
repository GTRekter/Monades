terraform {
  required_providers {
    ncloud = {
      source = "NaverCloudPlatform/ncloud"
    }
  }
  required_version = ">= 0.13"
}

provider "ncloud" {}

resource "ncloud_vpc" "vpc" {
  ipv4_cidr_block = "10.4.0.0/16"
}

module "access_control_group" {
  source = "../../../access_control_group/vpc"
  vpc_no = ncloud_vpc.vpc.id
  name   = "example-acg"
  description = "example description"
}