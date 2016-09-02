#veronica and collin

arr = [42, 89, 23, 1]

def search_array(array,num)
  counter = 0
  while counter < array.length
    if array[counter] == num
      p counter
    end
    counter = counter + 1
  end
end

p search_array(arr, 89)

# [0,1,1,2,3,5]

#find a way to add the last two numbers of an array together and keep doing that for a number of sequences
#need to use .next
#fib(6) [0,1,1,2,3,5] 4.next + 3.next = 2
#add 0 + 1 then ad again but with a new addition method 0.next + 1

# def fib(num)
#   counter = 0
#   while counter <= num
#     counter + 1

#     counter = counter + 1
#   end
# end


def fibonacci( n )
    fib_nums = []
    return  n  if n <= 1
    fib_nums << fibonacci( n - 1 )
    fib_nums << fibonacci( n - 2 )
    p "#{fib_nums}"
end
puts fibonacci( 10 )