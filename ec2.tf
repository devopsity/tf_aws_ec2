###############################################
# Module: AWS EC2 Instance
###############################################

// This template creates the following resources
// - A EC2 instance

resource "aws_instance" "one_instance" {

    //Required
    ami = "${var.ami}"
    instance_type = "${var.instance_type}"

    //Optional
    availability_zone = "${var.availability_zone}"
    placement_group = "${var.placement_group}"
    tenancy = "${var.tenancy}"
    ebs_optimized = "${var.ebs_optimized}"
    disable_api_termination = "${var.disable_api_termination}"
    instance_initiated_shutdown_behavior = "${var.instance_initiated_shutdown_behavior}"
    key_name = "${var.key_name}"
    monitoring = "${var.monitoring}"
    vpc_security_group_ids = ["${split(",", var.vpc_security_group_ids)}"]
    subnet_id = "${var.subnet_id}"
    associate_public_ip_address = "${var.associate_public_ip_address}"
    private_ip = "${var.private_ip}"
    source_dest_check = "${var.source_dest_check}"
    user_data = "${var.user_data}"
    iam_instance_profile = "${var.iam_instance_profile}"
    user_data = "${data.template_file.init.rendered}"

    // volumes
    root_block_device  {
        volume_type = "${var.root_volume_type}"
        volume_size = "${var.root_volume_size}"
        delete_on_termination = "${var.root_volume_delete_on_termination}"
    }

    tags {
        Name = "ec2-${var.region_code}-${var.env}-${var.ec2_name}"
        region = "${var.region_code}"
        env = "${var.env}"
        environment = "${var.environment}"
        team = "${var.team}"
        deploytag = "${var.deploytag}"
    }
}


data "template_file" "init" {
  template = "${file("templates/user-data.tpl")}"
  vars {
    new_hostname = "${var.ec2_name}"
    environment = "aws-${var.region_code}-${var.env}"
  }
}