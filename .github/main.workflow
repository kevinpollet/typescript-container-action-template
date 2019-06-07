workflow "TypeScript ❤️Github Actions" {
  on = "push"
  resolves = ["typescript-action-template"]
}

action "typescript-action-template" {
  uses = "./"
}
