def grocery(str,rmstr)
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
  grocery_list= delete_item(rmstr,grocery_list)
  grocery_list=update("tomato",6,grocery_list)
  print(grocery_list)

end

# # Method to add an item to a list

def add_item(str,list)
  list[str]=1
  list
end


# Method to remove an item from the list

def delete_item(rmstr,list)
  list.delete(rmstr)
  list
end

# Method to update the quantity of an item

def update (str,qty,list)
  list[str]=qty
  list
end

# Method to print a list and make it look pretty

def print(list)
  list.each do |food, qty|
    puts "#{food} with qty: #{qty}"
  end
end

p grocery("potato","lemonade")