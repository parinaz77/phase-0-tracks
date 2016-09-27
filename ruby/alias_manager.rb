def spy_name #create method for creating fake spy name
  array_of_spyname=[] #create empty array for list of fake names
  name=""
  while name != "quit" #until user doesnt give quit ask for new name
    puts "Enter Spy's first name and last name(enter quit to get out)"
    name = gets.chomp #ask for spy name
    if name !="quit" #until we dont have quit as a given name
      array_name=name.split(" ") #creare an array of first and last name
      swap_name = swap_name(array_name) #call swap_name method
      new_name=swap_name.join(" ") #create string of last and first name
      vowels_name=vowels_change(new_name) #call vowels_name method
      array_of_spyname.push(vowels_name) #add the new name to list
      p vowels_name
    end
  end
  array_of_spyname #return list of names
end

def swap_name(array_name) #create a method to swap last name with first name
  new_array_name=[] #create new array
  new_array_name << array_name[-1] #push the last name first to the new array
  new_array_name << array_name[0] #push the first name second to the new array
  return new_array_name
end

def vowels_change(new_name)
  vowels ="aeiou".chars #create array of vowels letter
  array_of_name=new_name.chars.map! do |letter| #look into each char
    if vowels.include?(letter) #if char is included in our vowels array
      letter=vowels[(vowels.index(letter)+1)] #change the char to the next one in vowel array
    else
      letter=letter #if char is not in vowels keep the char as is
    end
  end
  return array_of_name.join("")
end


p spy_name #call spy_name method
