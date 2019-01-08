puts File.readlines 'game_banner.txt'

sleep(3)

system("clear")

puts "What word would you like to reveal?"
word = gets.chomp

puts "You picked a word: #{word}"
