# cl-raytest

Raylib + Common Lisp demo project. Provides custom C bindings to
Raylib via [cffi](https://cffi.common-lisp.dev/) (see `raylib/`).

## Installation

1. [SBCL](https://www.sbcl.org/)
1. [Quicklisp](https://www.quicklisp.org/beta/)
1. [Raylib](https://www.raylib.com/)

### Set up ASDF

This comes pre-installed with SBCL, though you may wish to install it
manually so you have a more recent version.

ASDF has some preconfigured load paths for locating ASDF systems
(`.asd` files), but to load `(dev|release).lisp` you will need to set
up a custom path pointing to this project. You can do so with the
following lines (Note that this path is different on Windows, [more
info](https://asdf.common-lisp.dev/asdf/Configuring-ASDF-to-find-your-systems.html#DOCF3)):

```shell
mkdir ~/.config/common-lisp/source-registry.conf.d/
cd ~/.config/common-lisp/source-registry.conf.d/
echo '(:tree "/path/to/raytest/")' > raytest.conf
```

## Run the project

```shell
make run
```
