.PHONY: test check

build:
	dune build src

code:
	-dune build
	code .
	! dune build --watch

start:
	OCAMLRUNPARAM=b dune exec src/execute.ml