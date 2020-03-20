`(== 64 64)
(de mmap (L F)
   (native "@" "mmap" 'N 0 L 1 2 F 0) )
(de munmap (A L)
   (native "@" "munmap" 'N A L) )
(de xxh64 (M S)
   (native
      "libxxhash.so"
      "XXH64"
      'N
      M
      S
      0 ) )

(let
   (F "/bin/date"
      Size (car (info F))
      Map (mmap Size (open F T))
   )
   (println 'F F 'Size Size)
   (println 'fin (xxh64 Map Size))
   (munmap Map Size)
)


(bye)
