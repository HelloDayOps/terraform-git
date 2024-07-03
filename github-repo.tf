resource "github_repository" "ter-git" {
  name        = "terraform-git"
  description = "Github repository via terraform"

  visibility = "public"

}

resource "github_branch" "development" {
  repository = github_repository.ter-git.name
  branch     = "development"
}