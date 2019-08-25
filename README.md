# typescript-action-template

[![Build Status](https://github.com/kevinpollet/typescript-action-template/workflows/Build/badge.svg)](https://github.com/kevinpollet/typescript-action-template/actions) [![License](https://img.shields.io/badge/license-MIT-blue.svg)][1]

Repository template to build GitHub Actions in Node.js with TypeScript.

## How does it work?

The [Dockerfile][9] use the multi-stage build feature available since Docker `17.05`, see https://docs.docker.com/develop/develop-images/multistage-build/ for more details.

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
- [actions-toolkit][3]: The GitHub Actions ToolKit providing a set of packages to make creating actions easier and drive consistency.
- [Jest][4]: JavaScript Testing Framework with a focus on simplicity
- [ESLint][5]: Pluggable linter for JavaScript / TypeScript code
- [Prettier][6]: Opinionated code formatter
- [Husky][7] & [lint-staged][8]: Code formatting on git commit

## Contributing

Contributions are welcome!

Want to file a bug, request a feature or contribute some code?

Check out the [contribution guidelines][2].

## License

[MIT][1] © kevinpollet

[1]: ./LICENSE.md
[2]: ./CONTRIBUTING.md
[3]: https://github.com/actions/toolkit
[4]: https://jestjs.io/
[5]: https://github.com/typescript-eslint/typescript-eslint#typescript-eslint
[6]: https://prettier.io/
[7]: https://github.com/typicode/husky
[8]: https://github.com/okonet/lint-staged
[9]: ./Dockerfile
