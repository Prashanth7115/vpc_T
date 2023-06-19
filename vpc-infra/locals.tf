locals {
   vpc_id = module.vpc.vpc_id
   public_route_table_name = format("%s-%s",lookup(var.tags,"Name"), "public")
   private_route_table_name = format("%s-%s",lookup(var.tags, "Name"), "private")
}

