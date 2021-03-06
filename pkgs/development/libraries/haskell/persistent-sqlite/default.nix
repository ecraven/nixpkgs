# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, aeson, conduit, monadControl, monadLogger, persistent
, resourcet, text, transformers
}:

cabal.mkDerivation (self: {
  pname = "persistent-sqlite";
  version = "2.1.1";
  sha256 = "1hypaixwp6q10gfwbg0xfqfw7vz9j56max5i0k1mklan6js7wy9w";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    aeson conduit monadControl monadLogger persistent resourcet text
    transformers
  ];
  meta = {
    homepage = "http://www.yesodweb.com/book/persistent";
    description = "Backend for the persistent library using sqlite3";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
  };
})
