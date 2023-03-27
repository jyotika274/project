terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  token = var.token
}

variable "token" {
  type    = string
  default = "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" 
}

resource "github_repository" "test-repo" {
  name        = "test-repo"
  description = "Test repo from Terraform"
  visibility = "public"
  template {
    owner      = " jyotika274"
    repository = "Demo"
  }
}
