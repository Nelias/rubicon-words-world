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

def clean_sleep(seconds)
  sleep(seconds)
  system("clear")
end

puts File.readlines 'game_banner.txt'

clean_sleep(3)

puts "May all those phonemes not drive you crazy!!!"

clean_sleep(1.5)

3.times do
  puts "w, u, v, t, d, p, b, a, o, i, e, k, g, h, s, z"

  clean_sleep(0.2)
  sleep(0.2)
end

puts "w, u, v, t, d, p, b, a, o, i, e, k, g, h, s, z"

clean_sleep(1)

# conjure phoneme demon
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

puts "What word would you like to reveal?"
word = gets.chomp

puts "You picked a word: #{word}"
