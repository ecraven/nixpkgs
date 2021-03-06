{ stdenv, fetchurl, unzip }:

stdenv.mkDerivation rec {
  name = "fira-4.1";

  src = fetchurl {
    url = "http://www.carrois.com/downloads/fira_4_1/FiraFonts4100.zip";
    sha256 = "0mqmmq1m2p0hb0x4mr74gghqr75iglilah7psfb3vdc80fc9h6yk";
  };

  buildInputs = [unzip];
  phases = [ "unpackPhase" "installPhase" ];
  sourceRoot = "FiraFonts4100";

  installPhase = ''
    mkdir -p $out/share/fonts/opentype
    find . -name "*.otf" -exec cp -v {} $out/share/fonts/opentype \;
  '';

  meta = with stdenv.lib; {
    homepage = http://www.carrois.com/fira-4-1/;
    description = "Sans-serif font for Firefox OS";
    longDescription = ''
      Fira Sans is a sans-serif font designed by Erik Spiekermann,
      Ralph du Carrois, Anja Meiners and Botio Nikoltchev of Carrois
      Type Design for Mozilla Firefox OS.  It is closely related to
      Spiekermann's FF Meta typeface.  Available in Two, Four, Eight,
      Hair, Thin, Ultra Light, Extra Light, Light, Book, Regular,
      Medium, Semi Bold, Bold, Extra Bold, Heavy weights with
      corresponding italic versions.
    '';
    license = licenses.ofl;
    platforms = platforms.all;
  };
}
