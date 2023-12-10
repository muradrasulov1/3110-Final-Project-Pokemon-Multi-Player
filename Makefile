.PHONY: test check doc opendoc

build:
	dune build src

code:
	-dune build
	code .
	! dune build --watch

utop:
	OCAMLRUNPARAM=b dune utop src

test:
	OCAMLRUNPARAM=b dune exec test/main.exe

check:
	@bash check.sh

doc:
	dune build @doc

opendoc: doc
	@bash opendoc.sh	
