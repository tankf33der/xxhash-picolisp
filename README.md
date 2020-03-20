xxHash bindings for PicoLisp.

#### Install required library
```
VoidLinux
$ xbps-install -Syu xxHash xxHash-devel

ArchLinux
$ pacman -Syu xxhash

Checking
$ ldconfig -p | grep xxhash
        libxxhash.so.0 (libc6,x86-64) => /usr/lib/libxxhash.so.0
        libxxhash.so (libc6,x86-64) => /usr/lib/libxxhash.so
```

#### Benchmarking
xxh64 is modern and fastets on 64bit systems.
```
$ xxh64sum -b /bin/date
xxh64sum 0.7.3 (64-bit x86_64 + SSE2 little endian), GCC 9.2.0, by Yann Collet
Loading /bin/date...
XXH32                    :     108832 ->    60285 it/s ( 6257.0 MB/s)
XXH32 unaligned          :     108832 ->    59354 it/s ( 6160.4 MB/s)
XXH64                    :     108832 ->   120409 it/s (12497.3 MB/s)
XXH64 unaligned          :     108832 ->   119523 it/s (12405.3 MB/s)
XXH3_64b                 :     108832 ->   106751 it/s (11079.7 MB/s)
XXH3_64b unaligned       :     108832 ->   103767 it/s (10770.0 MB/s)
XXH3_64b seeded          :     108832 ->   107640 it/s (11171.9 MB/s)
XXH3_64b seeded unaligne :     108832 ->   104291 it/s (10824.4 MB/s)
XXH128                   :     108832 ->    98845 it/s (10259.1 MB/s)
XXH128 unaligned         :     108832 ->    90113 it/s ( 9352.8 MB/s)
XXH128 seeded            :     108832 ->   103598 it/s (10752.5 MB/s)
XXH128 seeded unaligned  :     108832 ->    94271 it/s ( 9784.5 MB/s)
```

#### Run
```
$ pil xxhash.l /bin/date
picolisp 12289150671020524345
xxh64sum 12289150671020524345
```
