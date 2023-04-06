{
  description = "My collection of flake templates";

  outputs = { self }: {
    templates = {
      hello = {
        path = ./hello;
        description = "Template including hello in shell packages";
      };
      package = {
        path = ./package;
        description = "Template for a nix package";
      };
      rust = {
        path = ./rust;
        description = "Rust template, using oxalica/rust-overlay";
      };
    };
  };
}
