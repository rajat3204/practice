provider "aws" {
  region     = "us-west-2"
  access_key = "AKIASM437KRTP2SBG5KE"
  secret_key = "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"
}

module "iam_account" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-account"

  account_alias = "tnu"

  minimum_password_length = 37
  require_numbers         = false
}