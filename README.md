This is a modification of the old netnews package "C News" to work on the PiDP-11,
and on PDP-11s in general. The PiDP-11 is a replica PDP-11/70 front panel, driven
by a Raspberry Pi emulating a PDP-11 via simh.

As C News is mostly the work of others, with a small contribution from myself, I have 
organized the repository into three directories to make clear what parts are my additions,
and what parts are the original code.

The "c-news-orig" directory contains the original C News sources as obtained at:

<https://www.tuhs.org/Archive/Applications/News/C-News/Apr_1995_Release/c-news.tar.Z>

The "PiDP-11-release" directory contains my modifications of the C News sources to run
under 2.11 BSD on the PDP-11 architecture. A walkthrough for installing C News can be found
at <https://github.com/jwbrase/pdp11-tools> under the "howtos" directory.

The "PiDP-11-patch" directory contains a patch that, when applied to the contents of the
"c-news-orig" directory, will produce the contents of the "PiDP-11-release" directory.

See the README.* files in the c-news-orig and PiDP-11-release directories for information on
the code in those directories.

