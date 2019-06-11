workflow "build" {
  on = "push"
  resolves = ["install-dependencies", "lint", "test", "run"]
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

action "test" {
  needs = "lint"
  uses = "docker://node:12-alpine"
  runs = "npm test"
}

action "run" {
  needs = "test"
  uses = "./"
}
