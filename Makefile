.PHONY: test check

build:
	dune build

code:
	-dune build
	code .
	! dune build --watch

start:
	OCAMLRUNPARAM=b dune exec lib/my_program

test:
	OCAMLRUNPARAM=b dune exec test/main.exe