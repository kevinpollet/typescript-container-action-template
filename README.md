# A GitHub Action example using TypeScript

> This repository contains an example of a GitHub action written in TypeScript. This action simply outputs `TypeScript ❤️  GitHub Actions`
> in the action log.

## How does it work?

The [Dockerfile](./Dockerfile) use the multi-stage build feature available since Docker `17.05`, see https://docs.docker.com/develop/develop-images/multistage-build/ for more details.

1. TypeScript sources are built within a docker image used for the build
2. Then, built sources are copied in the final GitHub action image
3. Finally, built sources are run with Node.js

Here is the action log output:

```shell
TypeScript ❤️  GitHub Actions

### SUCCEEDED typescript-action-example 08:41:49Z (36.596s)
```

### Advantages

The resulting GitHub action image is thinner and contains only the needed runtime 'dependencies' and not all the
'devDependencies' needed to build the project with TypeScript.

## License

[MIT](./LICENSE.md)
