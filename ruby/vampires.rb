puts 'How many employees are we processing today?'
x = gets.chomp.to_i

while x > 0

    puts 'What is your name?'
    name = gets.chomp

    if name == "Drake Cula"
      puts '“Definitely a vampire.'
    end

    puts 'How old are you?'
    age = gets.chomp.to_i

    if age > 200
      age = false
    else
      age = true
    end

    puts 'What year were you born?'
    year = gets.chomp.to_i

    if year > 1800
      year = false
    else
      year = true;
    end

    puts 'Our company cafeteria serves garlic bread. Should we order some for you?'
    garlic_bread = gets.chomp

    if garlic_bread == 'yes'
      garlic_bread = true
    elsif garlic_bread == 'no'
      garlic_bread = false
    end

    puts 'Would you like to enroll in the company’s health insurance?'
    health = gets.chomp

    if health == 'yes'
      health = true
    elsif health == 'no'
      health = false
    end

    user = true

    while user == true
      puts 'please list your allergies.'
        allergies = gets.chomp

       if allergies == 'sunshine'
          puts 'Probably a vampire'
            user = false
      elsif allergies == 'done'
          user = false
        end
    end

    if name == false
      puts '“Definitely a vampire.'
    elsif (age == true) && (garlic_bread == true || health == true)
      puts 'Probably not a vampire.'
    elsif (age == false) && (garlic_bread == false || health == false)
      puts 'Probably a vampire.'
    elsif (age == false) && (garlic_bread == false && health == false)
      puts 'Almost certainly a vampire.'
    else
      puts 'Results inconclusive'
    end

    x = x - 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."