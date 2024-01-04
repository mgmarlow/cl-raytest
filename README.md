# cl-raytest

Depends on raylib and cffi.

## Set up asdf

This comes pre-installed with SBCL, though you may wish to install it
manually so you have a more recent version.

Add a conf file so asdf can find the system paths:

```
mkdir ~/.config/common-lisp/source-registry.conf.d/
cd ~/.config/common-lisp/source-registry.conf.d/
echo '(:tree "/path/to/raytest/")' > raytest.conf
```
