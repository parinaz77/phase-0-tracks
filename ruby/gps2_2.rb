def grocery(str)
# Method to create a list
  grocery_list=Hash.new(1)
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
  qty="2 3 1 4"
  list = "lemonade tomato onion ice-cream"
  food_a=list.split(" ")
  qty_a=qty.split(" ")
  i=0
  food_a.each do |item|
      grocery_list[item]=qty_a[i]
      i+=1
  end
  grocery_list = add_item(str,grocery_list)

end


# # steps:
#   # [fill in any steps here]
#   # set default quantity
#   # print the list to the console [can you use one of your other methods here?]

# # output: [what data type goes here, array or hash?]

# # Method to add an item to a list
# # input: item name and optional quantity
# # steps:
# # output:
def add_item(str,list)
  list<<str
end





# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:
grocery(potato)