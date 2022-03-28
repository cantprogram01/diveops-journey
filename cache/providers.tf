terraform {
  required_providers {
	aws = {
	  source = "aws"
	  version = ">= 0.12"
	}

	random = {
	  source = "random"
	  version = ">= 0.12"
	}

	local = {
	  source = "local"
	  version = ">= 0.12"
	}

	null = {
	  source = "null"
	  version = ">= 0.12"
	}

	template = {
	  source = "template"
	  version = ">= 0.12"
	}

	tls = {
	  source = "tls"
	  version = ">= 0.12"
	}

  }
}