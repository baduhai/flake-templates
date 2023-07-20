{
  description = "My collection of flake templates";

  outputs = { self }: {
    templates = {
      package = {
        path = ./package;
        description = "Template for a nix package";
      };
      python = {
        path = ./python
        description = "Template to python project";
      };
      rust = {
        path = ./rust;
        description = "Rust template, using oxalica/rust-overlay";
      };
      shell = {
        path = ./shell;
        description = "Template for a devShell";
      };
    };
  };
}
