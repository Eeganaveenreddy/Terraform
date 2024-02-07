terraform {
  required_version = "~> 1.6"

  required_providers {
    aw = { ## here 'aw' is local name, it should match with provider local name
      version = ">= 5"
      source  = "hashicorp/aws"
    }
  }
}

provider "aw" { // 'aw' is a local name, it should match with local name of require_providers in terraform block.
  region  = "ap-south-1"
  profile = "terraform"
  #   access_key = "AKIAVRUVQASYSYLZKSNO"
  #   secret_key = "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"
}

resource "aws_instance" "myec2" {
    ami = "ami-03f4878755434977f"
    instance_type = "t2.micro"
    count = 5

    tags = {
        Name = web-${count.index}
    }
}