# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".swapcase
  # => “InVeStIgAtIoN”
puts 'thiS is AwESome'.swapcase

puts "zom".insert(1,'o')
  # => “zoom”
puts 'col'.insert(2,'l')

puts "enhance".center(15)
  # => "    enhance    "
puts 'string'.center(20)

puts "Stop! You’re under arrest!".upcase
  # "STOP! YOU’RE UNDER ARREST!"
puts 'im amazing!'.upcase

puts "the usual".gsub!(/$/,' suspects')
  # "the usual suspects"
puts 'its really hot in'.gsub!(/$/,' chico')

puts " suspects".prepend('the usual')
  # => "the usual suspects"
puts ' world'.prepend('hello')

puts "The case of the disappearing last letter".chomp('r')
  # => "The case of the disappearing last lette"
puts "this is my favorite letter p".chomp('p')

puts "The mystery of the missing first letter".slice(1..-1)
  # => "he mystery of the missing first letter"
puts 'i finally figured it out yaayy'.slice(0..-1)

puts "Elementary,    my   dear        Watson!".squeeze(' ')
# => "Elementary, my dear Watson!"
puts 'oh dear       sir how     do     you   do ?'.squeeze(' ')

puts "z".ord
  # => 122
# (What is the significance of the number 122 in relation to the character z?)
puts 'A'.ord

puts "How many times does the letter 'a' appear in this string?".count('a')
  # => 4
puts 'how many times do i say hi i really like to say hi and i am really just typing hi for my example hi, one ore time hi'.count('i')
