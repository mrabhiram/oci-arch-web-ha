## Copyright © 2020, Oracle and/or its affiliates. 
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

# Variables
variable "tenancy_ocid" {
}

variable "compartment_ocid" {
}

variable "user_ocid" {
}

variable "fingerprint" {
}

variable "private_key_path" {
}

variable "region" {
}

variable "ssh_public_key" {
}

variable "ssh_private_key" {
}

# Specify any Default Value's here

variable "availability_domain" {
  default = "3"
}

# OS Images
variable "instance_os" {
  description = "Operating system for compute instances"
  default     = "Oracle Linux"
}

variable "linux_os_version" {
  description = "Operating system version for all Linux instances"
  default     = "7.7"
}

variable "instance_shape" {
  description = "Instance Shape"
  default     = "VM.Standard2.1"
}

/*
we are specifying docker username and password to deploy a sample app. 
However specify the username and password of your docker hub where you have your docker image stored.
*/

variable "docker_username" {
  default = "testuser2000"
}

variable "docker_password" {
  default = "testpassword123"
}

variable "node_count" {
  default = "1"
}
