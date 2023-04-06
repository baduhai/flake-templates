{ lib, stdenv }:

stdenv.mkDerivation (finalAttrs: {
  pname = "";
  version = "";

  meta = with lib; {
    description = "";
    homepage = "";
    license = licenses.;
    platforms = platforms.all;
  };
})

