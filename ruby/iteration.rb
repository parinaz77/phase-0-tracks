##### Release 1******
puts"  ****Release 1****"
colors=["blue","orange","red","black"]
reverse_colors=[]
colors.each do |color|
  reverse_colors << color.reverse
end
p reverse_colors
# .map! example
colors.map! do |color|
  color.reverse
end
puts "array after map!"
p colors

## Example for Hash
students_color={"Anna"=>"orange", "Amanda"=>"blue", "John"=>"black"}
students_color_reverse= Hash.new
reversed_student_color = students_color.map do |name, color|
  color.reverse
end
p reversed_student_color
# .each example
students_color.each do |name, color|
  students_color_reverse[name] = color.reverse
end
p students_color_reverse


##### Release 2******
## For Hash
puts"  ****Release 2****"
puts" ** Hash **"
numbers={a:1, b:2, c:3, d:7, e:8}
p numbers
# 1. A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
numbers.delete_if {|letter, number| number<5}
p numbers

# 2. A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
numbers={a:1, b:2, c:3, d:7, e:8}
numbers.keep_if {|letter,number| number<5}
p numbers

# 3. A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
numbers={"a"=>1, "b"=>2, "c"=>3, "d"=>7, "e"=>8}
new_numbers=numbers.select do |letter, number|
  letter.include?("a")
end
p new_numbers

# 4. A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).
numbers={a:1, b:2, c:3, d:7, e:1}
status = true
numbers.each do |letter,number|
  if number ==2
    status=false
  end
  numbers.delete(letter) if status == false
end
p numbers

## For Array
puts" ** Array **"
array=[1,2,3,4,5,6,7,8,9]
p array
# 1. A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
array.delete_if {|num| num<5}
p array
# 2. A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
array=[1,2,3,4,5,6,7,8,9]
array.keep_if {|num| num<5}
p array
# 3. A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
array=[1,2,3,4,5,6,7,8,9]
new_array=array.select {|num| num>5}
p new_array
# 4. A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).
array=[1,2,3,4,5,6,1,7,8,9]
new_array=array.drop_while{|num| num<5}
p new_array