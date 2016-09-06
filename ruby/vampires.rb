p 'How many employees are we processing today?'
x = gets.chomp.to_i

vampire_results = nil


while x > 0

    p 'What is your name?'
    name = gets.chomp

      if name == 'Drake Cula' || name == 'adam'
        vampire_results = 'Definitely a vampire'
        p vampire_results
        x = x - 1
      else

    p 'How old are you?'
    age = gets.chomp.to_i

    p 'What year were you born?'
    year = gets.chomp.to_i
    
    if (Time.now - age) == year
        age = true
    else
        age = false
    end


    p 'Our company cafeteria serves garlic bread. Should we order some for you?'
    garlic_bread = gets.chomp

    if garlic_bread == 'yes'
      garlic_bread = true
    elsif garlic_bread == 'no'
      garlic_bread = false
    end

    p 'Would you like to enroll in the company’s health insurance?'
    health = gets.chomp

    if health == 'yes'
      health = true
    elsif health == 'no'
      health = false
    end

    user = true

    while user == true
      p 'please list your allergies.'
        allergies = gets.chomp

       if allergies == 'sunshine'
          vampire_results = 'Probably a vampire'
            user = false
      elsif allergies == 'done'
          user = false
        end
    end

    if name == false
       vampire_results = 'Definitely a vampire.'
    elsif age == true && (garlic_bread == true || health == true)
      vampire_results = 'Probably not a vampire.'
    elsif age == false && (garlic_bread == false || health == false)
      vampire_results = 'Probably a vampire.'
    elsif age == false && (garlic_bread == false && health == false)
      vampire_results = 'Almost certainly a vampire.'
    else
      vampire_results = 'Results inconclusive'
    end

    x = x - 1
end
end

p vampire_results

p "Actually, never mind! What do these questions have to do with anything? Let's all be friends."