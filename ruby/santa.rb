
$name_array = []

def name_lister(string)
  names = string.split(' ')
  $name_array.push(names)
end

name_lister("Dexter  Darcel  Margeret  Leila  Marie  Mikki  Wilburn  Precious  Emiko  Terri  Alita
Weldon  Season  Kiara  Deloras  Laquanda  Marina  Rebecka  Soon  Lavona")

p $name_array

class Santa

  attr_reader :age
  attr_accessor :gender
  attr_accessor :ethnicity

  def initialize(gender,ethnicity)
    @name = $name_array[0][rand(20)]
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(140)
  end

  def speak()
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    p "That was a good type of #{cookie}"
  end

  def celebrate_birthday!()
    @name + 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking.push(reindeer_name)
  end

end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
100.times do |i|
  i = rand(7)
  santas << santa = Santa.new(example_genders[i], example_ethnicities[i])
end
p '-----------------'
p santas[0]
santas[0].gender = 'male'
p santas[0]
p '-----------------'
p santas[0].age()
p '-----------------'
santas.each do |santa|
  p santa
end