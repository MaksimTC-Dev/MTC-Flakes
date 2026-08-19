{
  description = "MTC-Flakes";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }:
	let
		system = "x86_64-linux";
		pkgs = import nixpkgs { inherit system; };
	in
	{
	devShells.${system}.default = pkgs.mkShell {
		buildInputs = with pkgs; [
			# C Programming Language
			gcc
			gnumake
			gdb
			valgrind
			
			# Python Programming Language
			(python3.withPackages (ps: with ps; [
				pip
				cffi
				cython
				numpy
				pytest
				invoke
			]))

			# Shell (Bash)
			bashInteractive
			shellcheck
			shfmt
		 ];
		
		shellHook = ''
			echo "WELCOME TO DEVSHELL!"
		'';
		};
	};	
}

