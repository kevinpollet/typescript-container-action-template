# A GitHub Action template using TypeScript

> This repository contains a template of a GitHub action written in TypeScript. This action simply outputs `TypeScript ❤️ GitHub Actions`
> in the action log.

## How does it work?

The [Dockerfile](./Dockerfile) use the multi-stage build feature available since Docker `17.05`, see https://docs.docker.com/develop/develop-images/multistage-build/ for more details.

1. TypeScript sources are built within a docker image used for the build
2. Then, built sources are copied in the final GitHub action image
3. Finally, built sources are run with Node.js

Here is the action log output:

```shell
ℹ  info      TypeScript ❤️ GitHub Actions

### SUCCEEDED typescript-action-template 10:22:57Z (36.42s)
```

### Advantages

The resulting GitHub action image is thinner and contains only the needed runtime `dependencies` and not all the
`devDependencies` needed to build the project with TypeScript.

## Contributions

Contributions are very welcome ✨👍

See [CONTRIBUTING.md](./CONTRIBUTING.md) for more information and how to get started.

## License

[MIT](./LICENSE.md)
