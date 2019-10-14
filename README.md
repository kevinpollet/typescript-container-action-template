# TypeScript Container Action Template

[![Build Status](https://github.com/kevinpollet/typescript-container-action-template/workflows/build/badge.svg)][9]
[![Run Status](https://github.com/kevinpollet/typescript-container-action-template/workflows/run/badge.svg)][9]
[![Use this template](https://img.shields.io/badge/✨%20Use%20this%20template%20%20✨-blueviolet.svg)][10]
[![License](https://img.shields.io/badge/license-MIT-blue.svg)][1]

Template repository to create a GitHub container action in Node.js with TypeScript.

## How does it work?

This basic action takes a name as input and writes the corresponding greeting message to the action logs.

The container action uses the Docker multi-stage build feature available since version 17.05, to compile the TypeScript sources and to copy the compilation result to the final container image. So, it's not necessary to commit the compiled sources to the action repository.

## Features

- Strict type checking
- [actions-toolkit][3]: A set of packages to make creating actions easier and drive consistency
- [Jest][4]: JavaScript Testing Framework with a focus on simplicity
- [ESLint][5]: Pluggable linter for JavaScript / TypeScript code
- [Prettier][6]: Opinionated code formatter
- [Husky][7] & [lint-staged][8]: Code formatting on commit

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
[9]: https://github.com/kevinpollet/typescript-container-action-template/actions
[10]: https://github.com/kevinpollet/typescript-container-action-template/generate
