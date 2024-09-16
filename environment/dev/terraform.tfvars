project_name = "checkmate-ecs-cluster"
region       = "us-east-1"


## SSM VPC Parameters ##

ssm_vpc_id = "/checkmat-vpc/vpc/vpc_id"

ssm_public_subnet_1 = "/checkmat-vpc/vpc/subnet_public_1a"

ssm_public_subnet_2 = "/checkmat-vpc/vpc/subnet_public_1b"

ssm_public_subnet_3 = "/checkmat-vpc/vpc/subnet_public_1c"

ssm_private_subnet_1 = "/checkmat-vpc/vpc/subnet_private_1a"

ssm_private_subnet_2 = "/checkmat-vpc/vpc/subnet_private_1b"

ssm_private_subnet_3 = "/checkmat-vpc/vpc/subnet_private_1c"

## Load Balancer Parameters ##

load_balancer_internal = false

load_balancer_type = "application"

## ECS Parameters  ##

nodes_ami = "ami-09d3335e2eaf06692" #Get id with aws ssm get-parameters --names /aws/service/ecs/optimized-ami/amazon-linux-2/recommended --region us-east-1

node_type = "t3a.large"

node_volume_size = "50" #Definition in GB

node_volume_type = "gp3"

cluster_on_demand_min_size = 2

cluster_on_demand_max_size = 4

cluster_on_demand_desired_size = 3 #Valor entre min e max

cluster_spot_min_size = 2

cluster_spot_max_size = 4

cluster_spot_desired_size = 3 #Valo