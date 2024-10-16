## v1.9.0 (2024-10-16)

### Feat

- improve base and python template

### Fix

- keep `.envrc` files in new repos.

## v1.8.1 (2024-10-14)

### Fix

- match ruff line length with black's one

## v1.8.0 (2024-10-14)

### Feat

- **python**: enable black check on commit.

## v1.7.1 (2024-10-14)

### Fix

- **python**: remove package dependencies from language section.

## v1.7.0 (2024-10-06)

### Feat

- **node.js**: add npm & eslint

## v1.6.3 (2024-10-06)

### Fix

- typo here
- quick manual patch for fenix input
- pretty sure this is a typo

## v1.6.2 (2024-10-02)

### Fix

- consistently set the same version across python package.

## v1.6.1 (2024-10-02)

### Fix

- add missing dev packages with poetry.

## v1.6.0 (2024-09-10)

### Feat

- **Python**: support Poetry package manager.

### Refactor

- switch main package manager to Poetry.

## v1.5.1 (2024-09-05)

### Refactor

- **nix**: update nixfmt hook.
- **devenv**: switch to `nixpkgs-unstable` repository.

## v1.5.0 (2024-08-28)

### Feat

- **python**: add pylint and enable all lsp dependencies for python.

## v1.4.2 (2024-07-26)

### Fix

- **python**: downgrade Python version to 3.11.

## v1.4.1 (2024-07-25)

### Fix

- **python**: add missing initial version.

## v1.4.0 (2024-07-25)

### Feat

- **python**: automatic Github release on merge to main.
- **inception**: release on merge.

## 1.3.0 (2024-07-25)

## v1.3.0 (2024-07-25)

### Feat

- **inception**: automatic release workflow.
- add `jq` and `bat` (with alias)

### Fix

- github token for inception release checkout.
- **python**: update deprecated linter configuration.
- **python**: type checking issue.

## v1.2.0 (2024-07-22)

### Feat

- **python**: add automatic versioning using release script.
- **python**: run pytest command at `devenv test`.
- **Python**: Configure pytest and ruff in pyproject.toml.
- **Github**: Add test workflow to all templates.
- **ptyhon**: add project structure directories.
- add release script.

### Fix

- **python**: add author detail to pyproject.toml.

### Refactor

- **ci/cd**: only run tests on pushes to main and PRs.

## v1.1.0 (2024-07-19)

### Feat

- Add release workflow to the main project.
- add changelog to the main project.
- Support generating containers using devenv.
- add Commitzen together with SCM configuration.

### Fix

- Commitzen git repository discovery.

### Refactor

- disable release workflow.
- update pdm lock and fix installation errors. (#20)

## v1.0.1 (2024-07-17)

### Fix

- **python**: uninitialized variable bug.

## v1.0.0 (2024-07-17)

### Feat

- *****: test development environment.
- **rust**: initialize the configuration.
- **editorconfig**: add configuration for Python and Node.js.
- **node.js**: initialize the JS template.
- **go**: initialize the template.
- *****: enable devcontainer for the main repository.
- **python**: intialize devenv configuration.
- *****: add copier to dependency lists of the project.
- *****: initialize the project.

### Fix

- **ci**: remove unnecessary Python dependencies.
- *****: missing .envrc.
- *****: missing devenv.yaml.
- *****: add missing readme files.
- **nix**: use RFC nix formatting.

### Refactor

- **python**: install dependencies inside the virtualenv.
- **python**: downgrading to Python 3.11
- *****: generate gitignore using templates.
- *****: validate project name.
- **nix**: ensure rendered devenv file is formatted properly.
