# ask the user for name,age, number of children,decor theme, a boolean wether or not they like green paint, allergies,favorite color
#create the skeleton for the contractor hash, while nesting a an array of allergies
# set the uers info as the value of the hash
# change some info to match the data type expected in hash like integers or booleans


contractor_info = {
  name: '',
  number_of_children: nil,
  decor_theme: '',
  green_paint: nil,
  favorite_color: '',
  allergies: []
}

puts 'Type your name.'
name = gets.chomp
p contractor_info[:name] = name

puts 'Pleaste tell me how many children you have.'
children = gets.chomp.to_i
p contractor_info[:number_of_children] = children

puts 'What kind of theme would you like word it in a few words.'
theme = gets.chomp
p contractor_info[:decor_theme] = theme

puts 'Would you like green paint?'
green_paint = gets.chomp
if green_paint.include? 'yes'
  green_paint = true
else
  green_paint = false
end
p contractor_info[:green_paint] = green_paint

puts 'What is your favorite color.'
color = gets.chomp
p contractor_info[:favorite_color] = color

alg = nil
until alg == false
  puts 'please list allergies.'
  allergies = gets.chomp
    p contractor_info[:allergies].push(allergies)
  if (allergies == 'none' || allergies == 'done')
    alg = false
    p contractor_info[:allergies].chomp()
  end
  puts 'Thanks for the info.'
end

p contractor_info

puts 'is there any info you would like to change?'
change = gets.chomp

if change.include? 'yes'
  puts 'What would you like to change?'
  changes = gets.chomp.to_sym
  if changes == :number_of_children
    puts 'Please tell me how many children you have?'
    new_children = gets.chomp.to_i
    p contractor_info[changes] = new_children
    puts 'Okay thanks'
        elsif changes == :green_paint
          puts 'Would you like green paint?'
          green_paint = gets.chomp
          if green_paint.include? 'yes'
            green_paint = true
            p contractor_info[changes] = green_paint
          else
            green_paint = false
            p contractor_info[changes] = green_paint
          end
        elsif puts "Okay give me the new info for #{changes}"
              new_info = gets.chomp
              p contractor_info[changes] = new_info
              puts 'thanks'
        elsif changes == :allergies
          alg = nil
          until alg == false
            puts 'please list allergies.'
            allergie = gets.chomp
            p contractor_info[changes].push(allergie)
              if (allergie == 'none' || allergie == 'done')
                alg = false
                p contractor_info[:allergies].chomp()
              end
          end
          puts 'Okay thanks.'
  end
else
  puts 'okay great thanks!'
end

p contractor_info