<h1 align="center">typescript-action-template</h1>

<p align="center">
  A repository template to build GitHub Actions in Node.js with TypeScript
</p>
<p align="center">
 <a hef="https://actions-badge.atrox.dev/kevinpollet/typescript-action-template/goto">
    <img src="https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2Fkevinpollet%2Ftypescript-action-template%2Fbadge"/>
  </a>
  <img src="https://img.shields.io/badge/TypeScript-3.5-blue.svg"/>
  <a href="./LICENSE.md">
    <img src="https://img.shields.io/badge/license-MIT-blue.svg"/>
  </a>
</p>

<p align="center">
  <a href="https://github.com/kevinpollet/typescript-action-template/generate">
    <img src="https://img.shields.io/badge/✨%20Use%20this%20template%20✨-blueviolet.svg?style=for-the-badge"/>
  </a>
  <br/>
  <br/>
</p>

## How does it work?

The [Dockerfile](./Dockerfile) use the multi-stage build feature available since Docker `17.05`, see https://docs.docker.com/develop/develop-images/multistage-build/ for more details.

1. TypeScript sources are built within a docker image
2. Then, built sources are copied in the final GitHub Action image
3. Finally, built sources are run with Node.js

Here is the GitHub Action log:

```shell
ℹ  info      TypeScript ❤️ GitHub Actions

### SUCCEEDED typescript-action-template 10:22:57Z (36.42s)
```

> The final Docker image is thinner and contains only the runtime `dependencies` and not all the `devDependencies` required to build the TypeScript project.

## Features

- Strict TypeScript type checking
- [actions-toolkit](https://github.com/JasonEtco/actions-toolkit): A toolkit for building GitHub Actions in Node.js
- [ESLint](https://github.com/typescript-eslint/typescript-eslint#typescript-eslint): The pluggable linter for JavaScript / TypeScript code
- [Prettier](https://prettier.io/): Opinionated code formatter
- [Husky](https://github.com/typicode/husky) & [lint-staged](https://github.com/okonet/lint-staged): For code formatting on git commit

## Contributions

Contributions are very welcome ✨👍

See [CONTRIBUTING.md](./CONTRIBUTING.md) for more information and how to get started.

## License

[MIT](./LICENSE.md) © kevinpollet
