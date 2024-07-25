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
