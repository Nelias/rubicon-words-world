puts <<MLS
__________     ___.   .__                                              .___                           .__       .___
\______   \__ _\_ |__ |__| ____  ____   ____   __  _  _____________  __| _/______  __  _  _____________|  |    __| _/
 |       _/  |  \ __ \|  |/ ___\/  _ \ /    \  \ \/ \/ /  _ \_  __ \/ __ |/  ___/  \ \/ \/ /  _ \_  __ \  |   / __ | 
 |    |   \  |  / \_\ \  \  \__(  <_> )   |  \  \     (  <_> )  | \/ /_/ |\___ \    \     (  <_> )  | \/  |__/ /_/ | 
 |____|_  /____/|___  /__|\___  >____/|___|  /   \/\_/ \____/|__|  \____ /____  >    \/\_/ \____/|__|  |____/\____ | 
        \/          \/        \/           \/                           \/    \/                                  \/ 
MLS

sleep(1)

system("clear")

puts "What word would you like to reveal?"
word = gets.chomp

puts "You picked a word: #{word}"
