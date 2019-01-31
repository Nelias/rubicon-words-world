system("printf '\e[8;50;120t'")
system("clear")

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
load "phoneme_demon.rb"

puts "What word would you like to reveal?"
word = gets.chomp
puts

def additional_iteration(one, two, three, word, i)
  
  word.length.times do |j|
    j += i + 1

    if word[j] == two
      word[j] = one
      puts word

      word[j] = three
      puts word
      next
    end

    if word[j] == one
      word[j] = three
      puts word

      word[j] = two
      puts word
      next
    end

    if word[j] == three
      word[j] = one
      puts word

      word[j] = two
      puts word
      next
    end
  end
  
end

def phoneme_demon(one, two, three, word, i)

  if word[i] == one
    additional_iteration(one, two, three, word, i)

    word[i] = two
    puts word

    additional_iteration(one, two, three, word, i)

    word[i] = three
    puts word

    additional_iteration(one, two, three, word, i)
  end

end

word.length.times do |i|
  phoneme_demon("h", "k", "s", word, i)
end

word.length.times do |i|
  phoneme_demon("k", "s", "h", word, i)
end

word.length.times do |i|
  phoneme_demon("s", "h", "k", word, i)
end

puts
