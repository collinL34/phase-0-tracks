# module Shout
#    def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + 'yaaayyy'
#   end
# end

# p Shout.yelling_happily('mothaflocka')
# p Shout.yell_angrily('wooooh')

module Shout

  def yell_angirly(words)
      words + 'noooo!!!!'
  end

  def hollah(phrase)
    phrase + ' n pop ya collah'
  end

end


class Black_Rappers
  include Shout
end

class White_Rappers
  include Shout
end


vanila_ice = White_Rappers.new
p vanila_ice.hollah('hollah')

eminem = White_Rappers.new
p eminem.yell_angirly('lose yourself')

proof = Black_Rappers.new
p proof.hollah('naaahhh')

jeezy = Black_Rappers.new
p jeezy.yell_angirly('soul survivor')