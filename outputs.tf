###############################################
# Module: AWS EC2 Instance
###############################################

// Output the ID of the EC2 instance
output "id" {
    value = "${aws_instance.one_instance.id}"
}

// Output the availability zone
output "availability_zone" {
    value = "${aws_instance.one_instance.availability_zone}"
}

// Output the placement group
output "placement_group" {
    value = "${aws_instance.one_instance.placement_group}"
}

// Output the key name
output "key_name" {
    value = "${aws_instance.one_instance.key_name}"
}

// Output public DNS
output "public_dns" {
    value = "${aws_instance.one_instance.public_dns}"
}

// Output public IP
output "public_ip" {
    value = "${aws_instance.one_instance.public_ip}"
}

// Output private DNS
output "private_dns" {
    value = "${aws_instance.one_instance.private_dns}"
}

// Output private IP
output "private_ip" {
    value = "${aws_instance.one_instance.private_ip}"
}

// Output security groups
output "security_groups" {
    value = "${aws_instance.one_instance.security_groups}"
}

// Output VPC security groups IDS
output "vpc_security_group_ids" {
    value = "${aws_instance.one_instance.vpc_security_group_ids}"
}

// Output the VPC subnet ID
output "subnet_id" {
    value = "${aws_instance.one_instance.subnet_id}"
}