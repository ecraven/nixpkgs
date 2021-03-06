# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, aeson, genericAeson, hxt, jsonSchema, mtl, regular
, regularXmlpickler, restStringmap, text, uuid
}:

cabal.mkDerivation (self: {
  pname = "rest-types";
  version = "1.12";
  sha256 = "0is0kzpr7w1bfw32ybkqwj8g4fyx5ii983hbrqas9gbrkgc0hxv6";
  buildDepends = [
    aeson genericAeson hxt jsonSchema mtl regular regularXmlpickler
    restStringmap text uuid
  ];
  meta = {
    description = "Silk Rest Framework Types";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = with self.stdenv.lib.maintainers; [ aycanirican ];
  };
})
