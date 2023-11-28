.PHONY: test check

build:
	dune build

code:
	-dune build
	code .
	! dune build --watch

start:
	OCAMLRUNPARAM=b dune exec src/execute.exe