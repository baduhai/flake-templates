{
  description = "My collection of flake templates";

  outputs = { self }: {
    templates = {
      c = {
        path = ./c;
        description = "Template for a C project";
      };
      package = {
        path = ./package;
        description = "Template for a nix package";
      };
      python = {
        path = ./python;
        description = "Template for a python project";
      };
      rust = {
        path = ./rust;
        description = "Template for a rust project, using oxalica/rust-overlay";
      };
      shell = {
        path = ./shell;
        description = "Template for a devShell";
      };
    };
  };
}
