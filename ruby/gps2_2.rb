# Fernando Amador II / collin
# GPS 2_2

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash of grocery items

@items_list = {}
@new_list = {}

def list_creator(list, items_string)
  split_items = items_string.split(' ')
  split_items.each do |item|
  list[item] = 0
  end
   list
end

list_creator(@items_list, "carrots apples cereal pizza")

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  #call the hash and place the argumenets in the correct order
  #add the arguemnets to the hash
# output: hash of grocery items and quantity

def item_list_adder(list, items, quantity)
  list[items] = quantity
   list
end

item_list_adder(@items_list, 'applepie',10)

# Method to remove an item from the list
# input: item
# steps:
  #item list.delete(item)
  # modified list
# output: modified hash

def remove_item(list, item)
  list.delete(item)
   list
end

remove_item(@items_list, 'carrots')

# Method to update the quantity of an item
# input: item and new quanitity
# steps:
  #call list item = new quantity
  # modified list
# output: modified hash

def update(list, item, quantity)
 list[item] = quantity
  list
end

update(@items_list, 'applepie', 2)

# Method to print a list and make it look pretty
# input: list hash
# steps:
  #iterate through the list hash
  # list
# output: pretty version hash

def print_list(list)
 list.each do |item, quantity|
  p "#{item}: #{quantity}"
  end
end

print_list(@items_list)

list_creator(@new_list,'lemonade tomatoes onions ice-cream')
item_list_adder(@new_list, 'lemonade', 2)
item_list_adder(@new_list, 'tomatoes', 3)
item_list_adder(@new_list, 'onions', 1)
item_list_adder(@new_list, 'ice-cream', 4)

remove_item(@new_list, 'lemonade')

update(@new_list, 'ice-cream', 1)

print_list(@new_list)



    # What did you learn about pseudocode from working on this challenge?
    # I learned a nice and clean way to pseudocode when trying to talk a method which i think this way is a great way to start a project.

    # What are the tradeoffs of using arrays and hashes for this challenge?
    # We coudlnt use an array in this project or i guess we could have had a nested array like an array that holds the item and the next ntdex of that nested array could be the quantity but it would be very conterintuitive to do that so we just used a hash which makes more sense becasue you can simply make the key the item and the value the quantity.

    # What does a method return?
    # the method returns what ever it is passed into after its done doing whatever it is intended to do.

    # What kind of things can you pass into methods as arguments?
    # integers,strings,floats,booleans pretty much anything you really want to you just might have to set the argument in a different way in the method.

    # How can you pass information between methods?
    # by using callbacks or making instance variables for the variables withiin the methods that you want to pass around.

    # What concepts were solidified in this challenge, and what concepts are still confusing?
    # scope was one thing that was solidified in this challenge when i asked the guide about the scope she helped me understand it very well also just typical clean ways to create methods to answer a problem like making multiple methods that are small rather then one big method. But beyond that not too many other concepts are still confusing for me at least in this challenge.
