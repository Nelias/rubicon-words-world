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
puts

word.length.times do |i|
  if word[i] == "h"
    word[i] = "s"
    puts word

    word[i] = "k"
    puts word
    next
  end

  if word[i] == "s"
    word[i] = "k"
    puts word

    word[i] = "h"
    puts word
    next
  end

  if word[i] == "k"
    word[i] = "s"
    puts word

    word[i] = "h"
    puts word
    next
  end

  if word[i] == "a"
    word[i] = "o"
    puts word
  end
end

puts
