def spy_name
  array_of_spyname=[]
  name=""
  while name != "quit"
    puts "Enter Spy's first name and last name(enter quit to get out)"
    name = gets.chomp
    if name !="quit"
      array_name=name.split(" ")
      swap_name = swap_name(array_name)
      new_name=swap_name.join(" ")
      vowels_name=vowels_change(new_name)
      array_of_spyname.push(vowels_name)
      p vowels_name
    end
  end
  array_of_spyname
end

def swap_name(array_name)
  new_array_name=[]
  new_array_name << array_name[-1]
  new_array_name << array_name[0]
  return new_array_name
end

def vowels_change(new_name)
  vowels ="aeiou".chars
  array_of_name=new_name.chars.map! do |letter|
    if vowels.include?(letter)
      letter=vowels[(vowels.index(letter)+1)]
    else
      letter=letter
    end
  end
  return array_of_name.join("")
end


p spy_name
