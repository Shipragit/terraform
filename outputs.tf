output "public_instance_id" {
  value = module.ec2_public.instance_id
}

output "public_instance_public_ip" {
  value = module.ec2_public.public_ip
}

output "private_instance_id" {
  value = module.ec2_private.instance_id
}

output "private_instance_private_ip" {
  value = module.ec2_private.private_ip
}