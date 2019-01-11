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

def cl(seconds)
  sleep(seconds)
  system("clear")
end

puts File.readlines 'game_banner.txt'

cl(3)

puts "May all those phonemes not drive you crazy!!!"

cl(1.5)

3.times do
  puts "w, u, v, t, d, p, b, a, o, i, e, k, g, h, s, z"

  cl(0.2)
  sleep(0.2)
end

puts "w, u, v, t, d, p, b, a, o, i, e, k, g, h, s, z"
sleep(1)
system("clear")

# conjure phoneme demon
4.times do
  puts demon1
  sleep(0.05)
  system("clear")
  puts demon2
  sleep(0.05)
  system("clear")
  puts demon3
  sleep(0.05)
  system("clear")
  puts demon2
  sleep(0.05)
  system("clear")
  puts demon1
  sleep(0.05)
  system("clear")
end

puts "What word would you like to reveal?"
word = gets.chomp

puts "You picked a word: #{word}"
