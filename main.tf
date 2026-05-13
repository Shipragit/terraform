gmodule "network" {
  source = "./modules/network"

  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  region              = var.region
}

module "ec2_public" {
  source = "./modules/ec2"

  subnet_id     = module.network.public_subnet_id
  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  name          = "public-vm"
}

module "ec2_private" {
  source = "./modules/ec2"

  subnet_id     = module.network.private_subnet_id
  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  name          = "private-vm"
}