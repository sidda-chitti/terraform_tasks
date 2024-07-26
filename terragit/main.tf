resource "github_repository" "name" {
    name        = "terragit"
    description = "this repo is created through terraform"
    visibility  = "public"
}