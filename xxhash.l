`(== 64 64)
(de mmap (L F)
   (native "@" "mmap" 'N 0 L 1 2 F 0) )
(de munmap (A L)
   (native "@" "munmap" 'N A L) )
(de xxh64 (M S)
   (let
      (R
         (native
            "libxxhash.so"
            "XXH64"
            'N
            M
            S
            0 )
         P `(** 2 64) )
      (if (lt0 R) (& (+ R P) (dec P)) R) ) )
(let
   (F (car (argv))
      Size (car (info F))
      Map (mmap Size (open F T))
   )
   #(println 'F F 'Size Size 'Map Map)
   (println (xxh64 Map Size))
   (munmap Map Size)

   # XXX
   (call 'xxh64 F)
)


(bye)
