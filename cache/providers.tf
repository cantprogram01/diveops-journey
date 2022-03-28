terraform {
  required_providers {
	aws = {
	  source = "aws"
	  version = "~> 3.23.0"
	}

	random = {
	  source = "random"
	  version = "~> 3.0.0"
	}

	local = {
	  source = "local"
	  version = "~> 2.0.0"
	}

	null = {
	  source = "null"
	  version = "~> 3.0.0"
	}

	template = {
	  source = "template"
	  version = "~> 2.2.0"
	}

	tls = {
	  source = "tls"
	  version = "~> 3.0.0"
	}

  }
}