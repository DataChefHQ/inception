{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

let
  python-packages =
    p: with p; [
      pip
      python-lsp-server
      epc
      black
    ];
in
{
  name = "inception";

  # https://devenv.sh/packages/
  packages = with pkgs; [
    # Required for packages with Rust dependencies (eg. pydantic-core)
    cargo
    rustc
    # https://github.com/DataChefHQ/inception/issues/21
    git
    bat
    jq
    tealdeer

    # Python Dependencies
    (python3.withPackages python-packages)
  ];

  # This script is temporary due to two problems:
  #  1. `cz` requires a personal github token to publish a release https://commitizen-tools.github.io/commitizen/tutorials/github_actions/
  #  2. `cz bump` fails to sign in a terminal: https://github.com/commitizen-tools/commitizen/issues/1184
  scripts.release = {
    exec = ''
      rm CHANGELOG.md
      cz bump --files-only --check-consistency
      git tag $(python -c "from src.inception import __version__; print(__version__)")
    '';
    description = ''
      Release a new version and update the CHANGELOG.
    '';
  };
  scripts.cat.exec = ''
    bat "$@";
  '';

  languages.python = {
    enable = true;
    poetry = {
      enable = true;
      activate.enable = true;
      install.enable = true;
      install.allExtras = true;
      install.groups = [ "dev" ];
    };
  };

  # Make diffs fantastic
  difftastic.enable = true;

  # https://devenv.sh/pre-commit-hooks/
  pre-commit.hooks = {
    black.enable = true;
    nixfmt-rfc-style = {
      enable = true;
      excludes = [ ".devenv.flake.nix" ];
    };
    yamllint = {
      enable = true;
      settings.preset = "relaxed";
      excludes = [ ".copier-answers.yml" ];
    };
    pyright.enable = true;
    editorconfig-checker.enable = true;
    commitizen.enable = true;
  };

  # https://devenv.sh/integrations/codespaces-devcontainer/
  devcontainer.enable = true;
}
