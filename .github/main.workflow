workflow "build" {
  on = "push"
  resolves = ["install-dependencies", "lint", "run"]
}

action "install-dependencies" {
  uses = "docker://node:12-alpine"
  runs = "npm ci"
}

action "lint" {
  needs = "install-dependencies"
  uses = "docker://node:12-alpine"
  runs = "npm run lint"
}

action "run" {
  needs = "lint"
  uses = "./"
}
