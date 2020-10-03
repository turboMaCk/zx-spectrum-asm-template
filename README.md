# ZX Spectrum Assembly Development Template

Simple [ZX Spectrum](https://en.wikipedia.org/wiki/ZX_Spectrum) assembly development template based on:

* [zasm](https://github.com/Megatokio/zasm) assembler
* [fuse](http://fuse-emulator.sourceforge.net/) emulator

Build tools:

* [Make](https://www.gnu.org/software/make/) build tool
* [Nix](https://nixos.org/) package manager
* [direnv](https://direnv.net/) environment manager

This template is designed for GNU/Linux operating systems but should be relatively easy to port to any other UNIX like system or Windows.

## How to

Setup environment using direnv. This requires nix. Alternatively make sure to install Zasm, Fuse and Make.

```
$ direnv allow
```

Compile a tap file:

```shell
$ make
```

Compile tap file and run it in emulator:

```shell
$ make run
```

Start emulator without loading the file:

```shell
$ make emu
```
