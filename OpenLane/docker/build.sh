set -x
set -e
TARBALL=$(nix build\
	--extra-experimental-features flakes \
	--extra-experimental-features nix-command \
	--no-link\
	--print-out-paths\
	--accept-flake-config\
	--option system $NIX_SYSTEM\
	--extra-platforms $NIX_SYSTEM\
	..#packages.$NIX_SYSTEM.openlane1-docker\
)
cat $TARBALL | docker load
nix store delete $TARBALL
