array = [1,2,3,4,5]
new_array = []
i = -1
array.length.times do
  new_array << array[i]
  i-= 1
end

puts new_array

i = 0

while i < 10
  p i
  i +=1
end
begin i > 5
  p i
  i += 2
end while i < 25
puts i