# class Calculator


# end

  def calculate(calculation)
    p eval("#{calculation}")
  end


begin
  calc = []
  num = 0
  puts 'give me a calculation.'
  user = gets.chomp
  num += 1
  calc << user
  (calc << calculate(user)) unless user == 'done'
end until user == 'done'
i = 0
while i < calc.length
  puts "#{num} of calculations: #{calc[i]}"
  i+=1
end