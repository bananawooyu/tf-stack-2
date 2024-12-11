store "varset" "aws_creds" {
  id = "varset-YecpES2hy9E5tUSw"
  category = "env"
  
}

locals {
  role_arn = "arn:aws:iam::552166050235:role/jaehyeun_stack_role"
  tfc_kubernetes_audience = "k8s.workload.identity"
  tfc_hostname = "https://app.terraform.io"
  organization_name = "rum-org-korean-air"
  eks_clusteradmin_arn = "arn:aws:iam::552166050235:user/jaehyeun.park"
  eks_clusteradmin_username = "jaehyeun"
}

deployment "development" {
  inputs = {
    access_key = store.varset.aws_creds.AWS_ACCESS_KEY_ID
    secret_key = store.varset.aws_creds.AWS_SECRET_ACCESS_KEY
  }
}
 

# orchestrate "auto_approve" "safe_plans_dev" {
#  check {
#      # Only auto-approve in development environment if no resources are being removed
#      condition = context.plan.changes.remove == 0 && context.plan.deployment == deployment.development
#      reason = "Plan has ${context.plan.changes.remove} resources to be removed."
#  }
# }
