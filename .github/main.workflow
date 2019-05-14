workflow "TypeScript ❤️Github Actions" {
  on = "push"
  resolves = ["typescript-action-example"]
}

action "typescript-action-example" {
  uses = "./"
}
