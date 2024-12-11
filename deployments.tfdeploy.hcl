store "varset" "aws_creds" {
  id = "varset-YecpES2hy9E5tUSw"
  category = "env"
  
}

deployment "development" {
  inputs = {
    access_key = store.varset.aws_creds.AWS_ACCESS_KEY_ID
    secret_key = store.varset.aws_creds.AWS_SECRET_ACCESS_KEY
  }
}
 

orchestrate "auto_approve" "safe_plans_dev" {
 check {
     # Only auto-approve in development environment if no resources are being removed
     condition = context.plan.changes.remove == 0 && context.plan.deployment == deployment.development
     reason = "Plan has ${context.plan.changes.remove} resources to be removed."
 }
}
