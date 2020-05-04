#this file has VALUES

region      ="us-east-1" 
vpc_cidr    = "10.0.0.0/16"
key_name    = "task4_key" 


public_cidr1 = "10.0.1.0/24"
public_cidr2 = "10.0.2.0/24"
public_cidr3 = "10.0.3.0/24"

az1            ="a"
az2            ="b"
az3            ="c"

private_cidr1   ="10.0.11.0/24"
private_cidr2   ="10.0.12.0/24"
private_cidr3   ="10.0.13.0/24"

tags {
    Environment = "Dev"
    Department  = "IT"
    Team        = "infrastructure"
    Created_by  = "Gulshen"
}

# # for peering
# owner_profile ="514430043235"
# owner_vpc_id ="vpc-06f284ad983d45f5d"

# accepter_profile ="972228761283"
# accepter_vpc_id ="vpc-09ec7e1f5eb2448e6"