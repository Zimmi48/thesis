{ pkgs ? import (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/c0e56afddbcf6002e87a5ab0e8e17f381e3aa9bd.tar.gz";
    sha256 = "1zg28j760qgjncqrf4wyb7ijzhnz0ljyvhvv87m578c7s84i851l";
  }) {}
, pythonPackages ? pkgs.python3Packages
}:

pkgs.mkShell {
  buildInputs = with pythonPackages; [
    jupyterlab requests numpy pandas matplotlib statsmodels scipy
  ];
}
