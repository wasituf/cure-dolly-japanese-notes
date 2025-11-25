{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};

      typst-gen-includes-pkg = pkgs.writeShellScriptBin "typst-gen-includes" ''
        #!/usr/env bash

        SOURCE_DIR=""
        OUTPUT_FILE="typst-gen.json"

        if [ "$#" -ne 1 ]; then
            SOURCE_DIR="./lessons"
        else
            SOURCE_DIR="$1"
        fi

        # Check if the source directory exists
        if [ ! -d "$SOURCE_DIR" ]; then
            echo "Error: Directory '$SOURCE_DIR' not found."
            exit 1
        fi

        FILE_LIST=$(find "$SOURCE_DIR" -type f -name "*.typ" | sort)

        if [ -z "$FILE_LIST" ]; then
            echo "Warning: No .typ files found. Generating empty JSON array."
            echo "[]" | ${pkgs.jq}/bin/jq . > "$OUTPUT_FILE"
        else
            echo "$FILE_LIST" | ${pkgs.jq}/bin/jq -R -s 'split("\n") | map(select(length > 0))' > "$OUTPUT_FILE"
            COUNT=$(echo "$FILE_LIST" | wc -l)
            echo "Success! Generated paths for $COUNT files."
            echo "Generated list preview:"
            head -n 5 "$OUTPUT_FILE"
        fi

        exit 0
      '';
    in
    {
      packages.${system}.typst-includes-generator = typst-gen-includes-pkg;

      devShell.${system} = pkgs.mkShell {
        packages = with pkgs; [
          git
          typst
          typstyle
          self.packages.${system}.typst-includes-generator
        ];

        shellHook = ''
          typst-gen-includes ./lessons &
          zathura notes.pdf &
          typst w notes.typ
        '';
      };
    };
}
