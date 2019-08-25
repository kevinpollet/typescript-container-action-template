<h1 align="center">
  <img src="https://github.com/actions.png" width="150"/>
  <br/>
  <br/>
  typescript-action-template
</h1>

<p align="center">
  Repository template to build GitHub Actions in Node.js with TypeScript
</p>
<div align="center">
 <a hef="https://actions-badge.atrox.dev/kevinpollet/typescript-action-template/goto">
    <img src="https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2Fkevinpollet%2Ftypescript-action-template%2Fbadge"/>
  </a>
  <img src="https://img.shields.io/badge/TypeScript-3.5-blue.svg"/>
  <a href="./LICENSE.md">
    <img src="https://img.shields.io/badge/license-MIT-blue.svg"/>
  </a>
</div>

<div align="center">
  <br/>
  <a href="https://github.com/kevinpollet/typescript-action-template/generate">
    <img src="https://img.shields.io/badge/✨%20Use%20this%20template%20✨-blueviolet.svg?style=for-the-badge"/>
  </a>
  <br/>
  <br/>
</div>

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
- [actions-toolkit](https://github.com/JasonEtco/actions-toolkit): Toolkit for building GitHub Actions in Node.js
- [Jest](https://jestjs.io/): JavaScript Testing Framework with a focus on simplicity
- [ESLint](https://github.com/typescript-eslint/typescript-eslint#typescript-eslint): Pluggable linter for JavaScript / TypeScript code
- [Prettier](https://prettier.io/): Opinionated code formatter
- [Husky](https://github.com/typicode/husky) & [lint-staged](https://github.com/okonet/lint-staged): Code formatting on git commit

## Contributing

Contributions are welcome!

Want to file a bug, request a feature or contribute some code?

Check out the [contribution guidelines](./CONTRIBUTING.md).

## License

[MIT](./LICENSE.md) © kevinpollet
