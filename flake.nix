{
  description = "My collection of flake templates";

  outputs = { self }: {
    templates = {
      rust = {
         path = ./rust;
         description = "Rust template, using oxalica/rust-overlay";
      };
    };
  };
