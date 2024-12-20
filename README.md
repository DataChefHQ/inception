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

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**

- [Inception](#inception)
  - [In Action](#in-action)
  - [Features](#features)
    - [Detailed Features](#detailed-features)
  - [How to Use](#how-to-use)
    - [Prerequisites](#prerequisites)
    - [Initialize a New Project](#initialize-a-new-project)
  - [Resources](#resources)
  - [Contributing](#contributing)
  - [License](#license)
  - [Acknowledgments](#acknowledgments)

<!-- markdown-toc end -->

## In Action

[![Install Inception](https://res.cloudinary.com/marcomontalbano/image/upload/v1731339691/video_to_markdown/images/google-drive--1emSelH7_yrp51NERaaTQ2Hkk_0omBmGA-c05b58ac6eb4c4700831b2b3070cd403.jpg)](https://drive.google.com/file/d/1emSelH7_yrp51NERaaTQ2Hkk_0omBmGA/view?usp=drive_link "Install Inception")

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

| Feature                   | Python | Node.js | Go  | Rust |
| ------------------------- | ------ | ------- | --- | ---- |
| Automatic Changelog       | ✅     | ⏳      | ⏳  | ⏳   |
| Automatic Release         | ✅     | ⏳      | ⏳  | ⏳   |
| Automatic Versioning      | ✅     | ⏳      | ⏳  | ⏳   |
| CI/CD                     | ✅     | ✅      | ✅  | ✅   |
| Check code docs on commit | ✅     | ⏳      | ⏳  | ⏳   |
| Documentation Generator   | ⏳     | ⏳      | ⏳  | ⏳   |
| Editor Config             | ✅     | ✅      | ✅  | ✅   |
| Generate Containers       | ✅     | ✅      | ✅  | ✅   |
| Language Server           | ✅     | ✅      | ✅  | ✅   |
| Pre Commit Hooks          | ✅     | ✅      | ✅  | ✅   |
| Type Check                | ✅     | ✅      | N/A | N/A  |
| Yaml Lint                 | ✅     | ✅      | ✅  | ✅   |
| devcontainer              | ✅     | ✅      | ✅  | ✅   |
| difftastic                | ✅     | ✅      | ✅  | ✅   |
| dotenv                    | ✅     | ✅      | ✅  | ✅   |

## How to Use

### Prerequisites

To start working with Inception, you need:

- [Devenv](https://devenv.sh/getting-started/), version 1.0.0 or higher.
  [![Install Devenv](https://res.cloudinary.com/marcomontalbano/image/upload/v1731339790/video_to_markdown/images/google-drive--1rfU7zu3ZGXkgcoBQGZ9vnmWYaPveG0bE-c05b58ac6eb4c4700831b2b3070cd403.jpg)](https://drive.google.com/file/d/1rfU7zu3ZGXkgcoBQGZ9vnmWYaPveG0bE/view?usp=drive_link "Install Devenv")
- [pipx](https://pipx.pypa.io/stable/) or
  [copier](https://copier.readthedocs.io/)

> [!TIP]
> Enabling [direnv](https://direnv.net) allows you to:
>
> 1. Use your own shell configuration in `devenv` session.
> 2. Automatically integrated with your IDE (VSCode and Intellij support
> it out of the box, and for Emacs and Vim you can use suggested
> plugins below).
>
> For more information on how to enable it you can refer to [this wiki
> entry](https://github.com/DataChefHQ/inception/wiki/How-to-enable-direnv%3F).

*Suggested Plguins*:

1. [emacs-direnv](https://github.com/wbolster/emacs-direnv)
2. [direnv.vim](https://github.com/direnv/direnv.vim)

> [!NOTE]
> While installing `devenv` for the first time, you might face the
> following known errors depending to your local setup. Following links
> aim to help you solve them quickly:
>
> - [Add user to the trusted user list](https://github.com/DataChefHQ/inception/wiki/MacOS:-add-user-to-the-trusted-user-list)
> - [Trusting git directory](https://github.com/DataChefHQ/inception/wiki/Trusting-git-directory)

### Initialize a New Project

First, create a project folder and cd into it.

```bash
mkdir awesome-project && cd awesome-project
```

Using pipx:

```bash
pipx run copier copy --trust gh:DataChefHQ/Inception .
```

If you have copier installed locally, use:

```bash
copier copy --trust gh:DataChefHQ/Inception .
```


## Resources

- [Devenv Docs](https://devenv.sh/getting-started/)
- [Nix in 100 Seconds](https://www.youtube.com/watch?v=FJVFXsNzYZQ)

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
