terraform {
  required_providers {
    nhncloud = {
      source = "nhn-cloud/nhncloud"
    }
  }
  required_version = ">= 1.0.2"
}

provider "nhncloud" {
  region = "KR1"
}

resource "nhncloud_blockstorage_volume_v2" "sample_volume_01" {
  name              = "blockstorage_volume_01"
  size              = 10
  availability_zone = "kr-pub-a"
  volume_type       = "General HDD"
}

resource "nhncloud_blockstorage_volume_v2" "sample_volume_02" {
  name              = "blockstorage_volume_02"
  size              = 10
  availability_zone = "kr-pub-b"
  volume_type       = "General SSD"
}