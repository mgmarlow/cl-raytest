run:
	sbcl --load dev.lisp --quit

build:
	sbcl --non-interactive --load release.lisp
