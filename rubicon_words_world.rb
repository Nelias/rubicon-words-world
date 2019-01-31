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

def additional_iteration(first_letter, second_letter, third_letter, word, i)
  
  word.length.times do |j|

    j += i + 1

    if word[j] == second_letter
      word[j] = first_letter
      puts word

      word[j] = third_letter
      puts word
      next
    end

    if word[j] == first_letter
      word[j] = third_letter
      puts word

      word[j] = second_letter
      puts word
      next
    end

    if word[j] == third_letter
      word[j] = first_letter
      puts word

      word[j] = second_letter
      puts word
      next
    end
  end
  
end

def phoneme_demon(first_letter, second_letter, third_letter, word, i)

  if word[i] == first_letter
    additional_iteration(first_letter, second_letter, third_letter, word, i)

    word[i] = second_letter
    puts word

    additional_iteration(first_letter, second_letter, third_letter, word, i)

    word[i] = third_letter
    puts word

    additional_iteration(first_letter, second_letter, third_letter, word, i)
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
