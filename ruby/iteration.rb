##### Release 1******
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

