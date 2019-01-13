module "example" {
  source = "../../"

  name    = "dev.jrbeverly.me"
  comment = "A hosted zone mapping out the nameservers for subdomains"

  hosted_zones = [
    {
      alias       = "api"
      nameservers = ["8.8.8.8", "8.8.8.4"]
    },
    {
      alias       = "dev"
      nameservers = ["8.8.8.8", "8.8.8.4"]
    },
    {
      alias       = "apex"
      nameservers = ["8.8.8.8", "8.8.8.4"]
    },
    {
      alias       = "staging"
      nameservers = ["8.8.8.8", "8.8.8.4"]
    },
    {
      alias       = "test"
      nameservers = ["8.8.8.8", "8.8.8.4"]
    },
  ]

  tags = {
    Project = "Thing"
  }
}
