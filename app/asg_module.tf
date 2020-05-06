module "wordpress-n_virginia" {
  source           = "./module"
  region           = "us-east-1"
  image_owner      = "137112412989"
  desired_capacity = 1
  max_size         = 1
  min_size         = 1
}

module "wordpress-ohio" {
  source           = "./module"
  region           = "us-east-2"
  image_owner      = "137112412989"
  desired_capacity = 1
  max_size         = 1
  min_size         = 1
}

module "wordpress-n_california" {
  source           = "./module"
  region           = "us-west-1"
  image_owner      = "137112412989"
  desired_capacity = 1
  max_size         = 1
  min_size         = 1
}

module "wordpress-oregon" {
  source           = "./module"
  region           = "us-west-2"
  image_owner      = "137112412989"
  desired_capacity = 1
  max_size         = 1
  min_size         = 1
}

# module "wordpress-cape_town" {
#   source           = "./module"
#   region           = "af-south-1"
#   image_owner      = "137112412989"
#   desired_capacity = 1
#   max_size         = 1
#   min_size         = 1
# }

# module "wordpress-hong_kong" {
#   source           = "./module"
#   region           = "ap-east-1"
#   image_owner      = "137112412989"
#   desired_capacity = 1
#   max_size         = 1
#   min_size         = 1
# }

module "wordpress-mumbai" {
  source           = "./module"
  region           = "ap-south-1"
  image_owner      = "137112412989"
  desired_capacity = 1
  max_size         = 1
  min_size         = 1
}

module "wordpress-seoul" {
  source           = "./module"
  region           = "ap-northeast-2"
  image_owner      = "137112412989"
  desired_capacity = 1
  max_size         = 1
  min_size         = 1
}

module "wordpress-singapore" {
  source           = "./module"
  region           = "ap-southeast-1"
  image_owner      = "137112412989"
  desired_capacity = 1
  max_size         = 1
  min_size         = 1
}

module "wordpress-sydney" {
  source           = "./module"
  region           = "ap-southeast-2"
  image_owner      = "137112412989"
  desired_capacity = 1
  max_size         = 1
  min_size         = 1
}

module "wordpress-tokyo" {
  source           = "./module"
  region           = "ap-northeast-1"
  image_owner      = "137112412989"
  desired_capacity = 1
  max_size         = 1
  min_size         = 1
}

module "wordpress-canada_central" {
  source           = "./module"
  region           = "ca-central-1"
  image_owner      = "137112412989"
  desired_capacity = 1
  max_size         = 1
  min_size         = 1
}

module "wordpress-frankfurt" {
  source           = "./module"
  region           = "eu-central-1"
  image_owner      = "137112412989"
  desired_capacity = 1
  max_size         = 1
  min_size         = 1
}

module "wordpress-ireland" {
  source           = "./module"
  region           = "eu-west-1"
  image_owner      = "137112412989"
  desired_capacity = 1
  max_size         = 1
  min_size         = 1
}

module "wordpress-london" {
  source           = "./module"
  region           = "eu-west-2"
  image_owner      = "137112412989"
  desired_capacity = 1
  max_size         = 1
  min_size         = 1
}

# module "wordpress-milan" {
#   source           = "./module"
#   region           = "eu-south-1"
#   image_owner      = "137112412989"
#   desired_capacity = 1
#   max_size         = 1
#   min_size         = 1
# }

module "wordpress-paris" {
  source           = "./module"
  region           = "eu-west-3"
  image_owner      = "137112412989"
  desired_capacity = 1
  max_size         = 1
  min_size         = 1
}

module "wordpress-stockholm" {
  source           = "./module"
  region           = "eu-north-1"
  image_owner      = "137112412989"
  desired_capacity = 1
  max_size         = 1
  min_size         = 1
}

# module "wordpress-bahrain" {
#   source           = "./module"
#   region           = "me-south-1"
#   image_owner      = "137112412989"
#   desired_capacity = 1
#   max_size         = 1
#   min_size         = 1
# }

module "wordpress-sao_paulo" {
  source           = "./module"
  region           = "sa-east-1"
  image_owner      = "137112412989"
  desired_capacity = 1
  max_size         = 1
  min_size         = 1
}