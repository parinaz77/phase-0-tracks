# This awesome code was written by:
# Pari Khosraviani
# Joe Jackson
#for 4-3 pairing

puts "Please enter hamster name:"
name = gets.chomp
puts "Enter volume between 1-10"
volume = gets.chomp.to_i
if volume  < 1
  puts "enter volume again"
  volume=gets.chomp.to_i

elsif volume > 10
  puts "enter volume again"
  volume=gets.chomp.to_i
end

puts "enter color"
color = gets.chomp

age = nil
puts "enter age please"
age = gets.chop

if volume < 5
  puts "Hamster with name: #{name}, and volume: #{volume}, and age: #{age}, is a good candidate"

elsif volume >= 5
  puts "Hamster with name: #{name}, and volume: #{volume}, and age of: #{age}, is not a good candidate"
end