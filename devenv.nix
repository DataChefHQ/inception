{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{
  name = "inception";

  # https://devenv.sh/packages/
  packages = with pkgs; [
    cargo
    rustc
  ];

  languages.python = {
    enable = true;
    venv = {
      enable = true;
      requirements = ''
        pdm
        python-lsp-server
        importmagic
        epc
      '';
    };
  };

  enterShell = ''
    pdm install --no-self
  '';
  # Make diffs fantastic
  difftastic.enable = true;

  # https://devenv.sh/pre-commit-hooks/
  pre-commit.hooks = {
    black.enable = true;
    nixfmt = {
      enable = true;
      package = pkgs.nixfmt-rfc-style;
      excludes = [ ".devenv.flake.nix" ];
    };
    yamllint = {
      enable = true;
      settings.preset = "relaxed";
    };
    pyright.enable = true;
    editorconfig-checker.enable = true;
  };

  # https://devenv.sh/integrations/codespaces-devcontainer/
  devcontainer.enable = true;
}
