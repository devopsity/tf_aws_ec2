###############################################
# Module: AWS EC2 Instance
###############################################

// Global
variable "region" {}
variable "region_code" {}
variable "env" {}
variable "environment" {}
variable "team" {}
variable "deploytag" {}

//Required
variable "ec2_name" {}
variable "ami" {}
variable "instance_type" {}


// Volumes
variable root_volume_type { default = "gp2" }
variable root_volume_size { default = 8 }
variable root_volume_delete_on_termination { default = "true" }

//Optional
variable "availability_zone" { default = "" }
variable "placement_group" { default = "" }
variable "tenancy" { default = "" }
variable "ebs_optimized" { default = "" }
variable "disable_api_termination" { default = "" }
variable "instance_initiated_shutdown_behavior" { default = "" }
variable "key_name" { default = "miamed-terraform-deploy" }
variable "monitoring" { default = "" }
variable "security_groups" { default = "" }
variable "vpc_security_group_ids" { default = "" }
variable "subnet_id" { default = "" }
variable "associate_public_ip_address" { default = "" }
variable "private_ip" { default = "" }
variable "source_dest_check" { default = "" }
variable "user_data" { default = "" }
variable "iam_instance_profile" { default = "" }
variable "root_block_device" { default = "" }
variable "ebs_block_device" { default = "" }
variable "ephemeral_block_device" { default = "" }
