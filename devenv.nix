{ pkgs, lib, config, inputs, ... }:

let
  python-packages = p:
    with p; [
      pip
      python-lsp-server
      importmagic
      epc
      black
      mypy
    ];
in
{
  # https://devenv.sh/packages/
  packages = with pkgs; [
    pdm
    (python3.withPackages python-packages)
  ];

  languages.python = {
    enable = true;
    package = pkgs.python312;
    venv.enable = true;
  };

  # Make diffs fantastic
  difftastic.enable = true;

  # https://devenv.sh/pre-commit-hooks/
  pre-commit.hooks = {
    black.enable = true;
    nixpkgs-fmt.enable = true;
    yamllint = {
      enable = true;
      settings.preset = "relaxed";
    };
    pyright.enable = true;
    editorconfig-checker.enable = true;
  };

}
