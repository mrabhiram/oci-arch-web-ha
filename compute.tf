## Copyright © 2020, Oracle and/or its affiliates.
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

# This Terraform script provisions a compute instance

# Create Compute Instance

resource "oci_core_instance" "compute_instance1" {
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[var.availability_domain - 2]["name"]
  compartment_id      = var.compartment_ocid
  #display_name        = "Web-Server-1"
  shape               = var.instance_shape
  #subnet_id           = oci_core_subnet.subnet_2.id
  fault_domain        = "FAULT-DOMAIN-1"

  create_vnic_details {
    subnet_id           = oci_core_subnet.subnet_2.id
    display_name        = "Web-Server-1"
    assign_public_ip    = true
  }

  source_details {
    source_type             = "image"
    source_id             = "ocid1.image.oc1.phx.aaaaaaaat3d3dqsqxq3ju26t2na7omwiwsyrc37stixenoh7dyxsvzlcnloa"
    boot_volume_size_in_gbs = "50"
  }

  metadata = {
    ssh_authorized_keys = chomp(file(var.ssh_public_key))
  }

  timeouts {
    create = "60m"
  }
}

resource "oci_core_instance" "compute_instance2" {
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[var.availability_domain - 2]["name"]
  compartment_id      = var.compartment_ocid
  #display_name        = "Web-Server-2"
  shape               = var.instance_shape
  #subnet_id           = oci_core_subnet.subnet_2.id
  fault_domain        = "FAULT-DOMAIN-2"

  create_vnic_details {
    subnet_id           = oci_core_subnet.subnet_2.id
    display_name        = "Web-Server-2"
    assign_public_ip    = true
  }

  source_details {
    source_type             = "image"
    source_id             = "ocid1.image.oc1.phx.aaaaaaaat3d3dqsqxq3ju26t2na7omwiwsyrc37stixenoh7dyxsvzlcnloa"
    boot_volume_size_in_gbs = "50"
  }

  metadata = {
    ssh_authorized_keys = chomp(file(var.ssh_public_key))
  }

  timeouts {
    create = "60m"
  }
}