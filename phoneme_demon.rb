demon1 = <<DEMON
  w h d           b h a
    u   t       p   o
      v v       e e

          s   z

        wwwwwwwww
 
 
        wwwwwwwww
DEMON

demon2 = <<DEMON
  u k t           p k o
    v   d       b   a
      w w       i i

          z   s

        wwwwwwwww
 
        wwwwwwwww
DEMON

demon3 = <<DEMON
  w h d           b h a
    u   t       p   o
      v v       e e

          s   z

        wwwwwwwww
        wwwwwwwww
DEMON

4.times do
  puts demon1
  clean_sleep(0.05)
  puts demon2
  clean_sleep(0.05)
  puts demon3
  clean_sleep(0.05)
  puts demon2
  clean_sleep(0.05)
  puts demon1
  clean_sleep(0.05)
end
