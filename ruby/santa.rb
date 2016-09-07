class Santa

  def initialize(gender,ethnicity)
    example_reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    x = rand(9)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = example_reindeer[x]
    @age = 0
  end

  def speak()
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    p "That was a good type of #{cookie}"
  end

end


santas = []
example_reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  i = rand(7)
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end


santas.each do |santa|
  p santa
end