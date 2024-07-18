# Inception

[![DataChefHQ - inception](https://img.shields.io/static/v1?label=DataChefHQ&message=inception&color=blue&logo=github)](https://github.com/DataChefHQ/inception "Go to GitHub repo")
[![Test](https://github.com/DataChefHQ/inception/workflows/Test/badge.svg)](https://github.com/DataChefHQ/inception/actions?query=workflow:"Test")
[![GitHub release](https://img.shields.io/github/release/DataChefHQ/inception?include_prereleases=&sort=semver&color=blue)](https://github.com/DataChefHQ/inception/releases/)
[![License](https://img.shields.io/badge/License-MIT-blue)](#license)

Inception is a project kickstarter (scaffolding tool), designed to
improve developer experience and help with fast onboarding. All the
decisions and options provided in these templates, are based on what
we use mainly in [DataChef](https://datachef.co). However, given the
open source nature of this project, feel free to challenge these
decision and help us to improve them.

## In Action


[![asciicast](https://asciinema.org/a/WUasxV6aSiDQV0uqiYncLuQmY.svg?latest)](https://asciinema.org/a/WUasxV6aSiDQV0uqiYncLuQmY)

## Features

1. **Opinionated Configuration**: Reduces decision fatigue by
   providing fewer, well-chosen options.
2. **Reproducible and Declarative**: Built on [Nix](https://nixos.org)
   and [Devenv](https://devenv.sh), ensuring reliable, reproducible
   environments.
3. **Multi-Language Support**: Compatible with Python, Node.js, Go,
   and Rust.
4. **Enhanced Development Environment**: Includes features like
   [dotenv](https://www.dotenv.org/), [LSP](https://langserver.org/),
   [difftastic](https://github.com/Wilfred/difftastic), and more.
5. **DevContainer and CodeSpaces Support**: Developers don't even need
   a local editor to begin with!
6. **Comprehensive .gitignore**: Includes a well-crafted `.gitignore`
   file.

### Detailed Features

| Feature                 | Python | Node.js | Go | Rust |
|-------------------------|--------|---------|----|------|
| dotenv                  | ✅     | ✅      | ✅ | ✅   |
| difftastic              | ✅     | ✅      | ✅ | ✅   |
| devcontainer            | ✅     | ✅      | ✅ | ✅   |
| Yaml Lint               | ✅     | ✅      | ✅ | ✅   |
| Type Check              | ✅     | ✅      | ✅ | ✅   |
| Pre Commit Hooks        | ✅     | ✅      | ✅ | ✅   |
| Language Server         | ✅     | ✅      | ✅ | ✅   |
| Editor Config           | ✅     | ✅      | ✅ | ✅   |
| Documentation Generator | ⏳     | ⏳      | ⏳ | ⏳   |
| CI/CD                   | ⏳     | ⏳      | ⏳ | ⏳   |

## How to Use

### Prerequisites

To start working with Inception, you need:

- [Devenv](https://devenv.sh/getting-started/)
- [pipx](https://pipx.pypa.io/stable/) or
  [copier](https://copier.readthedocs.io/)

For smoother operation, we recommend installing
[direnv](https://direnv.net/) as described in [this
documentation](https://devenv.sh/automatic-shell-activation/).

### Initialize a New Project

Using pipx:
```bash
pipx run copier copy --trust gh:DataChefHQ/Inception .
```

If you have copier installed locally, use:
```bash
copier copy --trust gh:DataChefHQ/Inception .
```

## Contributing

We welcome contributions! Please check out our [contributing
guidelines](CONTRIBUTING.md) to get started.

## License

This project is licensed under the MIT License - see the
[LICENSE](LICENSE) file for details.

## Acknowledgments

- Thanks to the open-source community for their invaluable
  contributions to projects which we are building on:
  - [Nix](https://nixos.org)
  - [Devenv](https://devenv.sh)
  - [Copier](https://copier.readthedocs.io/)
- Inspiration and support from the DataChef team.
