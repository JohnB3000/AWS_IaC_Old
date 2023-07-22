terraform {
    source = "../../../infrastructure-modules/vpc"
}

include "root" {
    path = find_in_parent_folders()
}

inputs = {
    env = "dev"
    azs = ["eu-west-2a"]
    vpc_cidr_block = "10.0.0.0/16"
    private_subnets = ["10.0.1.0/24"]
    public_subnets = ["10.0.2.0/24"]
    private_subnet_tags = {
        Owner = "John"
    }
    public_subnet_tags = {
        Owner = "John"
    }
}